# docker for producion

- /martes/docker/prod

## build and upload containers to docker hub
./build.sh <versionnumber>

## dockerfiles

/martes/frontend/dockerfile

this is a 2 stage dockerfile where we: 
    - build the angular client (using node:22.3.0-alpine)
    - copy the dist/martes files to a nginx:1.27.3-alpine image

- base image
    nginx:1.27.3-alpine

    - copies a default.conf file into the image /etc/nginx/conf.d/default.conf (located /martes/docker/frontend/nginx/conf.d/default.conf)
    - the docker-compose.yaml file that is distributed in /martes_setup/ to the end users mounts a volume and copies this file the the host (wsl) so that it can be modified if necessary.

    - currently the default.conf exposes the frontend at port 80 and exposes the backend (port 8000) at http://localhost/api/
    - default.conf is also configured so that socket.io will work (sticky sessions)
    