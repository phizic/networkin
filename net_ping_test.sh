#!/bin/bash
# ping to local resource
echo "Pinging home router with 10 ECHO_Request"
ping -c 10 192.168.89.10 | tail -n 3
# ping to a location behind nat
echo "Pinging Google DNS with 10 ECHO_Request"
ping -c 10 8.8.8.8 | tail -n 3
