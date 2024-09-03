#from  an official nginx image from Docker Hub
FROM nginx:alpine

# Copy your HTML file to the correct location in the nginx server
COPY index.html /usr/share/nginx/html/index.html


# Copy the script to collect container details and update the HTML file
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh


# Set the entrypoint to run the script and start nginx
ENTRYPOINT ["/entrypoint.sh"]

# Expose port 80 to access the webpage
EXPOSE 80
