#Use the office node.js image as base image
FROM node:18.17.1-slim AS development

#set the working directory inside the container
WORKDIR /react-project

# copy package.json to container
COPY package.json .

#Install dependencies
RUN npm install

# Copy all the file in our project
COPY . .

#exppose port 5173 for development server (not really necessary) to access in our machine
EXPOSE 5173

#start the react development server with hot reloading
CMD [ "npm","run","dev" ]
