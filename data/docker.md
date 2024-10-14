<!-- # Docker Learning -->

## Docker Learning

### What is Docker?
A platform that helps developers build, share & run applications with container.

### What is Docker Images and Containers?
Images:- Are templates of Project
Container:- Running Instance of Image

#### Docker Images
- It's kind of ready-to-use software read-only template
- Images is made with source codes, libraries, external dependencies and tools.
- Images can not be updated.
- If you want to make change in image you have to create new image
- Images can not run directly.</br>
  
- **Example of Images**:</br>
  - Node.js Setup
  - React setup
  - Code of application
  - Dependencies
  - Other supporting tools
  - docker file
So, Docker Image is a template of our project.</br>

#### Docker Containers
- Container is a process that runs applicatin with images
- Container is an isolated process
- Means Container run independently on computer

#### Docker Images Type
Docker Image | description
------- | --------
Parent Image  |   Not Depend on other Image like: [Node.js](https://hub.docker.com/_/node), [PHP](https://hub.docker.com/_/php), [Python](https://hub.docker.com/_/python)
Base Image    |   Depend on Base Image. Example: React App required base image of 'Node.js'

### Basic Command of Docker
Command | description
------- | --------
help                | `docker -help`
version             | `docker --version`
[Pull Docker Images](https://hub.docker.com/search)  | `docker pull <docker_image_version>` <br> <br> Node.js ≡ `docker pull node:lts-slim` <br> Python ≡ `docker pull python`
Run Docker Image |`doker run -it <docker_image_name>` <br>or<br> `docker run -it <docker_image_name> /bin/bash` <br><br> Node.js ≡ `docker run -it node:lts-slim /bin/bash` <br> Python ≡ `docker run -it python /bin/bash`
Create Docker file| `touch dockerfile` <br> need to install `touch-cli` globally
Create Docker Images | `docker build -t <app_name> .`



