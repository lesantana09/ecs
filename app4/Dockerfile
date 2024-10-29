# Stage 1: Build the Next.js application
FROM node:alpine AS build

WORKDIR /usr/app

# Copy package.json and package-lock.json
COPY package*.json ./
RUN npm install --production

# Copy the rest of your application code
COPY . .
RUN npm run build

# Stage 2: Set up the Next.js server
FROM node:alpine AS production

WORKDIR /usr/app

# Copy the built files from the previous stage
COPY --from=build /usr/app ./

# Install only production dependencies
RUN npm install --production

# Expose port 80
EXPOSE 80

# Start the Next.js server on port 80
CMD ["npm", "start", "--", "-p", "80"]