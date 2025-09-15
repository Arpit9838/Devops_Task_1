# Simple Node Express Hello World App


![localhost:3000](/public/images/localhost_3000.png?raw=true "Node & Express")


# Node Express Hello World 

A simple **Node.js + Express** web app containerized with **Docker** and deployed using **Docker Compose**.  
This project is part of my **DevOps Intern Assignment**.


##  Prerequisites
Make sure you have the following installed:
- [Git](https://git-scm.com/downloads)
- [Node.js (LTS)](https://nodejs.org/) (for running locally without Docker)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)  
- Docker Compose (comes with Docker Desktop, check with `docker compose version`)



## Run Locally (Without Docker)
```bash
# Clone repo
git clone https://github.com/your-username/node-express-hello-world.git
cd node-express-hello-world

# Install dependencies
npm install

# Start app
npm start
````

 Open [http://localhost:3000](http://localhost:3000)



## Run with Docker

```bash
# Build Docker image
docker build -t node-express-hello-world .

# Run container
docker run -p 3000:3000 node-express-hello-world
```

 Open [http://localhost:3000](http://localhost:3000)



##  Run with Docker Compose

```bash
# Start app using Docker Compose
docker compose up --build
```

Open [http://localhost:3000](http://localhost:3000)

To stop:

```bash
docker compose down
```


##  Deliverables

* Simple Node.js app working locally and inside Docker.
* Dockerized using `Dockerfile`.
* Deployed with Docker Compose.
* Documented setup in this README.



##  Demo

When running successfully, you’ll see this in terminal:

```
> node-express-hello-world@1.0.0 start
> node app.js

Catch the action at http://localhost:3000
```

Open browser  [http://localhost:3000](http://localhost:3000)


Assignment 2: Local CI Pipeline

The goal is to simulate a CI pipeline locally using Docker.

Pipeline Script

pipeline.sh

#!/bin/bash
set -e

echo " Starting local CI pipeline..."
PROJECT_DIR=$(pwd)
echo " Using project dir: $PROJECT_DIR"

echo " Building Docker image..."
docker build -t node-express-hello-world:ci .

echo "Installing dependencies..."
docker run --rm -v $PROJECT_DIR:/usr/src/app -w /usr/src/app node-express-hello-world:ci npm install

echo " Installing ESLint..."
docker run --rm -v $PROJECT_DIR:/usr/src/app -w /usr/src/app node-express-hello-world:ci npm install eslint @eslint/js globals eslint-plugin-react --save-dev

echo "Running linting..."
docker run --rm -v $PROJECT_DIR:/usr/src/app -w /usr/src/app node-express-hello-world:ci npx eslint .

echo "Running tests..."
docker run --rm -v $PROJECT_DIR:/usr/src/app -w /usr/src/app node-express-hello-world:ci npm test || {
  echo " Tests failed"
  exit 1
}

echo "CI pipeline completed successfully."


Make executable:

chmod +x pipeline.sh

 Add a Test Script

Update package.json:

"scripts": {
  "start": "node app.js",
  "test": "echo \"No tests yet\" && exit 0"
}

Run the Pipeline
./pipeline.sh


Expected output:

Build Docker image

Install dependencies

Run ESLint

Run tests

Success

Screenshots
<img width="1250" height="726" alt="image" src="https://github.com/user-attachments/assets/c19f3e41-be2a-4604-bafc-603ecb240334" />
<img width="1171" height="401" alt="image" src="https://github.com/user-attachments/assets/77fec8ea-2211-4753-879e-1085e2024e31" />



##  Author

Arpit Mishra
DevOps Intern



