# Simple Node Express Hello World App


![localhost:3000](/public/images/localhost_3000.png?raw=true "Node & Express")



A simple **Node.js + Express** web app containerized with **Docker** and deployed using **Docker Compose**.  
This project is part of my **DevOps Intern Assignment**.

---

##  Prerequisites
Make sure you have the following installed:
- [Git](https://git-scm.com/downloads)
- [Node.js (LTS)](https://nodejs.org/) (for running locally without Docker)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)  
- Docker Compose (comes with Docker Desktop, check with `docker compose version`)

---

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

---

## Run with Docker

```bash
# Build Docker image
docker build -t node-express-hello-world .

# Run container
docker run -p 3000:3000 node-express-hello-world
```

 Open [http://localhost:3000](http://localhost:3000)

---

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

---

##  Demo

When running successfully, you’ll see this in terminal:

```
> node-express-hello-world@1.0.0 start
> node app.js

Catch the action at http://localhost:3000
```

Open browser  [http://localhost:3000](http://localhost:3000)

---

##  Author

Arpit Mishra
DevOps Intern



