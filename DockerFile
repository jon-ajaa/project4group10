# use the official Nginx image as the base image
FROM nginx:alpine

# remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# copy the HTML file to the Nginx web server root
COPY . . /usr/share/nginx/html

# expose the default Nginx port (80)
EXPOSE 80

# command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]