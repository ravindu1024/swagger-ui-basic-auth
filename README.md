# swagger-ui-basic-auth
Dockerfile to run a swagger ui instance that is protected by http basic auth

The only changes done to the official Swagger UI dockerfile are:
- install apache utils
- create a username and password using "htpasswd" which can be specified at build time
- add the basic auth configuration to the nginx.conf file (2 lines in the location block)

# Buid
docker build --build-arg USERNAME='username' --build-arg PASSWORD='super secure password' -t swagger-ui

# Run
docker run -p 8080:8080 -it swagger-ui
