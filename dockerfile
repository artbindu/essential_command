FROM node:16.15.1
WORKDIR /essential-command
COPY . .
RUN npm install -g nodemon \
    && npm install
EXPOSE 12345
CMD ["npm", "run", "start"]