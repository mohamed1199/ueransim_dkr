#!/bin/bash

# Function to start the container
start_container() {
    echo "Starting the container..."
    docker run -d --name my_container <your-container-image>
}

# Function to stop the container
stop_container() {
    echo "Stopping the container..."
    docker stop my_container
    docker rm my_container
}

# Main script logic
while true; do
    read -p "Enter 'cup' to start the container or 'cdown' to stop it: " input

    case $input in
        cup)
            start_container
            ;;
        cdown)
            stop_container
            ;;
        *)
            echo "Invalid command. Please try again."
            ;;
    esac
done
