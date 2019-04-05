# This is your Editor pane. Write the Dockerfile here and 
# use the command line to execute commands
FROM node:10-alpine
WORKDIR /src/app

COPY package.json /src/app/package.json
RUN npm install
COPY . /src/app
EXPOSE 3000 80
CMD ["npm", "start"]