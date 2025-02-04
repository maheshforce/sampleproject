# Step 1: Build Stage
FROM node:18-alpine AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire source code
COPY . .

# Build the application for production
RUN npm run build

# Step 2: Production Stage
FROM nginx:alpine

# Set the working directory inside the Nginx container
WORKDIR /usr/share/nginx/html

# Copy build output from the builder stage to Nginx
COPY --from=builder /app/dist/ .

# Copy custom Nginx configuration if needed
# Uncomment the following line if you have a custom nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
