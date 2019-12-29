#!/bin/bash

ping_bang () {
    echo $1 "packets to send. This may take a while..."
    ping -c $1 $2 | tail -n 3
}

# ping to local resource
echo "Pinging home router with 10 ECHO_Request"
ping_bang 10 192.168.89.10
# ping to a location behind nat
echo "Pinging Google DNS with 10 ECHO_Request"
ping_bang 10 8.8.8.8

# issue no.1 (currently under developement)
echo "average time for connections:"
