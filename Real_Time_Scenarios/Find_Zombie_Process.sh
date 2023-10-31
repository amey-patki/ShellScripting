#!/bin/bash

# Function to find zombie process

find_zombies() {
    #use ps command to list the zombie processes
    zombies=$(ps aux | awk '{if ($8 == "Z") print $2}')
    if [ -z "$zombies" ]; then
        echo "No zombie processes found."
    else
        echo "Zombie processes found:"
        for pid in $zombies; do
            echo "Process ID: $pid"
        done
    fi
}

find_zombies