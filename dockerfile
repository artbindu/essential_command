FROM node:16.15.1
RUN npm install -g nodemon
COPY . .
RUN npm install
EXPOSE 5112
CMD ["npm", "run", "start"]