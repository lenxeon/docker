#! /bin/bash

# Manage IP address settings on your docker-machines
#
#  ls                             List running docker-machines' ip addresses
#
#  static <machine> [ip-address]  Configure <machine> to use a static IP address
#                                 (default is current address)
#
#  dhcp <machine>                 Configure <machine> to use DHCP client to gather IP address
#
#  hosts                          Update /etc/hosts file

operation=${1}
shift

case $(uname) in
    CYGWIN*)
        sudo ()
        {
            if [[ $# -eq 0 ]]; then
                printf "Usage: sudo program arg1 arg2 ...\n";
                return 1;
            fi;
            prog="$1";
            shift;
            cygstart --action=runas $(which "$prog") "$@"
        }
        ;;
esac

case $operation in
    # Get our currently in-use docker-machine addresses
    ls)
        printf "%-20s %-8s %s\n" "Machine" "State" "IP Address"
        printf "%s\n" "------------------------------------------------"
        for machine in $(docker-machine ls --filter state=Running --format "{{.Name}}"); do
            ip=$(docker-machine ip $machine)
            bootsync="/var/lib/boot2docker/bootsync.sh"
            state=$(docker-machine ssh $machine "
                if [[ -f $bootsync ]] && grep -q \"# IP=$ip\" $bootsync; then
                    echo static;
                else
                    echo dhcp;
                fi
            ")
            printf "%-20s %-8s %s\n" $machine $state $ip
        done
        ;;

    # Configure the docker-machine to use a static ip address (defaults to current address)
    static)
        # Get the machine's ip and broadcast addresses (or use the ip address provided on the command-line)
        machine=$1
        ip=${2:-$(docker-machine ip $machine)}
        broadcast=${ip%.*}.255

        # Create the bootsync.sh file
cat <<EOF | docker-machine ssh $machine "sudo tee /var/lib/boot2docker/bootsync.sh >/dev/null"
#!/bin/sh
# This file was automatically generated by running "$(basename $BASH_SOURCE)" from the docker-machine host
# IP=$ip

# Stop the DHCP service for our host-only inteface
[[ -f /var/run/udhcpc.eth1.pid ]] && kill \$(cat /var/run/udhcpc.eth1.pid) 2>/dev/null || :

# Configure the interface to use the assigned IP address as a static address
ifconfig eth1 $ip netmask 255.255.255.0 broadcast $broadcast up
EOF

        # Set the bootsync.sh file as executable
        docker-machine ssh $machine sudo chmod u+x /var/lib/boot2docker/bootsync.sh

        # Go ahead and run the script to switch to static ip mode
        docker-machine ssh $machine sudo /var/lib/boot2docker/bootsync.sh

        # Regenerate the docker-machine certs
        docker-machine regenerate-certs -f $machine

        # Status report
        docker-machine ssh $machine ip addr show eth1 | grep "inet.*eth1"
        printf "docker-machine \"%s\" now has a static ip address\n" $machine
        ;;

    # Configure the docker-machine to use a DHPC address
    dhcp)
        machine=$1

        # Delete the config file and bring the interface down
        docker-machine ssh $machine sudo rm -f /var/lib/boot2docker/bootsync.sh
        docker-machine ssh $machine sudo ifconfig eth1 down

        # Start up the DHPC client again
        docker-machine ssh $machine "sudo /sbin/udhcpc -b -i eth1 -x hostname boot2docker -p /var/run/udhcpc.eth1.pid &"

        # Status report
        printf "docker-machine \"%s\" now has a dynamic ip address\n" $machine
        ;;

    # Update the hosts file to match the current docker-machine addresses
    hosts)
        tmp_etc_hosts=$(mktemp /tmp/etc_hosts.XXXXXX)
        trap "rm -f $tmp_etc_hosts $tmp_etc_hosts.bak" EXIT

        # Copy the /etc/hosts file contents to somewhere we can work with them
        cp /etc/hosts $tmp_etc_hosts || :

        # Update the file contents with the current state of the docker-machine IP addresses
        for machine in $(docker-machine ls --filter state=Running --format "{{.Name}}"); do
            ip=$(docker-machine ip $machine)

            sed -i.bak -e "/ ${machine}$/d" $tmp_etc_hosts
            printf "%-20s %s\n" $ip $machine >> $tmp_etc_hosts
        done

        # Fix line endings
        case $(uname) in
            CYGWIN*) unix2dos $tmp_etc_hosts &>/dev/null ;;
        esac

        # Only attempt to update the /etc/hosts file if changes need to be made
        if ! diff -q /etc/hosts $tmp_etc_hosts &>/dev/null; then
            # Do not use mv here. Cygwin users depend on this being a cp operation
            sudo cp $tmp_etc_hosts /etc/hosts
            case $(uname) in
                CYGWIN*) sleep 1 ;;  # Need to wait for async sudo operation to complete
            esac
        fi

        # Display the current/updated /etc/hosts file
        printf "\n"
        printf "# /etc/hosts\n"
        printf "%s\n" "--------------------------------"
        sed -Ee '/^[[:space:]]*(#|$)/d' /etc/hosts
        ;;

    *)
        printf "Usage: $(basename $BASH_SOURCE) <command> args...\n"
        printf "\n"
        printf "Commands:\n"
        printf "    ls                             List running docker-machines' ip addresses\n"
        printf "\n"
        printf "    static <machine> [ip-address]  Configure <machine> to use a static IP address\n"
        printf "                                   (default is current address)\n"
        printf "\n"
        printf "    dhcp <machine>                 Configure <machine> to use DHCP client to gather IP address\n"
        printf "\n"
        printf "    hosts                          Update /etc/hosts file\n"
    ;;
esac
