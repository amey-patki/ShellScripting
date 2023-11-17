#!/bin/bash

# Check if a filename is provided as a command line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Assign the filename to a variable
filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Function to count people in a particular city
count_people_in_city() {
    city=$1
    count=$(grep -c ", $City," "$filename")
    echo "$city = $count"
}

# Function to count people based on email provider
count_people_by_email_provider() {
    provider=$1
    count=$(grep -c "@$provider.com" "$filename")
    echo "$provider = $count"
}

# Read user input for city
echo -n "Enter a city name: "
read city
count_people_in_city "$city"

# Read user input for email provider
echo -n "Enter an email provider: "
read email_provider
count_people_by_email_provider "$email_provider"
