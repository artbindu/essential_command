FROM node:16.15.1
RUN npm install -g nodemon
WORKDIR /essential-command
COPY . .
RUN npm install
EXPOSE 5112
CMD ["npm", "run", "start"]