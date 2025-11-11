# Step 1: Use an official lightweight Nginx image
FROM nginx:alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Remove the default Nginx static files
RUN rm -rf ./*

# Step 4: Copy your local project files (HTML, CSS, JS, images) into the container
COPY . .

# Step 5: Expose port 80 for HTTP access
EXPOSE 80

# Step 6: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
