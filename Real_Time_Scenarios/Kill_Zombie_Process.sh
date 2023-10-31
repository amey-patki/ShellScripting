#!/bin/bash

# Function to kill zombie processes
kill_zombies() {
    # Use the 'ps' command to list zombie processes
    zombies=$(ps aux | awk '{if ($8 == "Z") print $2}')

    if [ -z "$zombies" ]; then
        echo "No zombie processes found."
    else
        # Iterate through the list of zombie process IDs and kill them
        for pid in $zombies; do
            echo "Killing zombie process $pid..."
            kill -9 "$pid"  # Send a SIGKILL signal to forcefully terminate the process
        done
        echo "All zombie processes killed."
    fi
}

# Call the function to kill zombie processes
kill_zombies
