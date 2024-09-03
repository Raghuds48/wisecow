#!/bin/bash

# Base name for containers
CONTAINER_BASE_NAME="my_container"

# Number of containers to create
NUM_CONTAINERS=10

# Loop through and create containers
for i in $(seq 1 $NUM_CONTAINERS); do
    CONTAINER_NAME="${CONTAINER_BASE_NAME}_$i"

    # Check if the container exists
    if [ "$(docker ps -a -q -f name=^/${CONTAINER_NAME}$)" ]; then
        echo "Container $CONTAINER_NAME exists. Deleting..."
        docker rm -f "$CONTAINER_NAME"
    fi

    # Create the container
    echo "Creating container $CONTAINER_NAME..."
    docker run -d --name "$CONTAINER_NAME" nginx  # Example using nginx image
done

echo "All containers have been created successfully."

