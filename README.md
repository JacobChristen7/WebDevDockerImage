# WebDevDockerImage

## Build the Docker Image

Build your Docker image locally:
```
docker build -t webdevdockerimage:latest .
```

## Run the Docker Container (Single Instance)

Run a single container for testing:
```
docker run --name my-docker-express-app -p 8080:8080 webdevdockerimage:latest
```

Visit your app at: [http://localhost:8080](http://localhost:8080)

---

## Docker Compose & Swarm Deployment

### 1. Initialize Docker Swarm (if not already initialized)
```
docker swarm init
```

### 2. Deploy the Stack
Deploy your multi-service stack using Docker Compose:
```
docker stack deploy -c docker-compose.yaml webdevstack
```

### 3. Scale Services
Scale the first service to 7 replicas:
```
docker service scale webdevstack_web1=7
```

### 4. Remove the Stack and Containers
Remove all services and containers in the stack:
```
docker stack rm webdevstack
```

---

## Notes

- Make sure your image is built before deploying the stack.
- The `docker-compose.yaml` uses ports 3000 and 3001 mapped to the container’s 8080.
- Use `docker service ls` and `docker service ps <service>` to monitor your services.