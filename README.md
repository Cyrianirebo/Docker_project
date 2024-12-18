# Docker Project


## Features
- **Mysql integration**. The app using Mysql database for saving data.
- **phpMyAdmin integration**. This ensure that modifying and checking database can be do seamlessly.
- **Nginx integration**. Nginx can be use to Load Balancing and SSL Termination.

## How It Works?
1. We run docker-compose.yaml with `docker-compose up -d` command. 
2. When the docker-compose is run, Docker will pull the necessary images (if not already present) and start the containers, also automatically create the network.
3. The MySQL container starts first, since other services depends on it. 
4. After mysql is succesfully created and classified as healthy by the healthcheck, now PhpMyAdmin get to starts.
5. Once the others is created, the Nginx container finally starts, serving content from the mapped directory and possibly interacting with MySQL via PHP or other back-end logic.

## Setup
- Make sure you running your docker engine. In windows and MacOS, you can just open the `docker desktop` app. But, if you using linux, you can use this command in terminal
```
sudo systemctl start docker
```

- After that, you can running the container using this command
```
docker-compose up -d
```
Using `-d` to running it using detached mode meaning it will running in the background.

- Finally you can access the web using some of these url.
### Nginx
```
localhost:8080
```
### phpMyAdmin
```
localhost:8081
```
### Mysql
The database uses port `3306`, but you can't access it through localhost because the database doesn't send any data.

### Some of command for docker.
- Stopping docker
```
docker-compose down
```

- Inspect running container
```
docker-compose ps
```

- Access bash of container
```
docker exec -it <container-id> bash 
```


## END
Thank you for taking the time to read. Feel free to fork this project and make any modifications.
