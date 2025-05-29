# WebDevDockerImage

## Build the Docker image
```
docker build -t webdevdockerimage:latest .
```

## Run the Docker container
```
docker run --name my-docker-express-app -p 8080:8080 webdevdockerimage:latest
```

## View the website
Open your browser and go to:  
```
http://localhost:8080
```