# docker for producion

- /martes/docker/prod

## build and upload containers to docker hub
./build.sh <versionnumber>

## dockerfiles

/martes/frontend/dockerfile

this is a 2 stage dockerfile where we first build the angular client and then copy the dist/martes files to a nginx 

- base image
    nginx:1.27.3-alpine

    - copies a default.conf file into the image /etc/nginx/conf.d/default.conf (located /martes/docker/frontend/nginx/conf.d/default.conf)
    - the docker-compose.yaml file that is distributed in /martes_setup/ to the end users mounts a volume and copies this file the the host (wsl) so that it can be modified if necessary.