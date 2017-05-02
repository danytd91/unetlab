#!/bin/bash

function nodeStop {
	echo -n "Shutting down..."
	killall -s SIGTERM qemu-system-x86_64 &> /dev/null
	echo " done"
}

echo -n "Starting node_${LABEL}..."

trap nodeStop SIGINT SIGTERM &> /dev/null

echo "Starting wrapper/router"
echo "Starting API"
echo "Starting QEMU"
sleep 300