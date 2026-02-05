#base image
FROM node:22-alpine

# setting working directory give it any name you want 
WORKDIR /app

#copying json files to current directory, using layer caching
COPY package*.json ./ 
RUN npm install

COPY . . 

#Exposing Port
EXPOSE 8080

#running commands
CMD [ "node", "index" ]


# docker build -t api .   to run this project on docker run this command in terminal