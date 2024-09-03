ner image and container name prefix
IMAGE_NAME="your_image_name"
CONTAINER_NAME_PREFIX="container_"

# Number of containers to create
# NUM_CONTAINERS=10
#
# # Loop to create containers
# for ((i=1; i<=NUM_CONTAINERS; i++))
# do
#     CONTAINER_NAME="${CONTAINER_NAME_PREFIX}${i}"
#
#         # Check if container exists
#             if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
#                     echo "Container ${CONTAINER_NAME} exists. Removing it..."
#                             docker rm -f ${CONTAINER_NAME}
#                                 fi
#
#                                     # Create a new container
#                                         echo "Creating container ${CONTAINER_NAME}..."
#                                             docker run -d --name ${CONTAINER_NAME} ${IMAGE_NAME}
#                                             done
#                                             
