# Use an official Node.js runtime as the base image
FROM public.ecr.aws/docker/library/node:lts-jod

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

#RUN npm run setup

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 8888

# Start the application
#CMD ["npm", "run", "dev"]
CMD ["sh", "-c", "npm start]
