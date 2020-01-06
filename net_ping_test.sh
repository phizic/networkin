#!/bin/bash

ping_bang () {
    echo $1 "packets to send. This may take a while..."
    ping -c $1 $2 | tail -n 3
}

# ping to local resource
echo "Pinging home router with 20 ECHO_Request"
ping_bang 20 192.168.89.10
# ping to a location behind nat
echo "Pinging Google DNS with 20 ECHO_Request"
ping_bang 20 8.8.8.8

# displaying connection parameters suing speedtestnet-cli (should consider case in which this is not present)
echo "Running speedtestnet..."
speedtest-cli --simple

# issue no.1 (currently under developement)
echo "average time for connections:"
# stream end of ping file to a temporary file then grab last line and printf the average time
echo nothing