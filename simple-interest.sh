#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The Simple Interest for a Principal of $principal at a Rate of $rate% over $time years is: $simple_interest"
}

# Input validation and user prompts
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of Interest (in %): " rate
read -p "Enter the Time (in years): " time

if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numerical values."
    exit 1
fi

# Call the function to calculate interest
calculate_simple_interest $principal $rate $time
