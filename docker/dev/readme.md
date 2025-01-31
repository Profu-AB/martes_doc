# Containers for development

folder
    /martes/docker/dev/

Start the containers:
    ./up.sh
        - starts 
            - backend (external port 9000, http://localhost:9000)
            - frontend (external port 4200, http://localhost:4200)
            - mongodb (external port 27019) username is admin, password is secret, install mongodb compass in windows and connect!

    ./build.sh
        - build new containers and deploy to docker hub

go back to /martes/

    - start visual studio code
        ./code .

    

    now you're ready to start the development.
    /martes/frontend/ (angular)
        - angular 18
        - output will be located in /martes/frontend/dist/martes
        - source code /martes/frontend/src/
        - nginx config /martes/frontend/nginx/conf.d/default.conf
        - /martes/frontend/ngsw-config.json is updated so that the url /api/ is handeled correcly (not by angular). see example in this repo /docker/dev/samplefiles/ngsw-config.json

        - bash into the development container
            /martes/frontend/docker_bash.sh
            here you can i.e
                npm install new packages if you need new ones
                npm update
                ng build --configuration web if you want to build and deploy with i.e firebase to the web

        - view the output logs from angular
            /martes/frontend/docker_logs.sh
            recommended is to open a new terminal in visual studio code and have this log accessible all the time!

        - where do i start?
            in visual studio code you can always find files by pressing ctrl+p
            so:
                - press ctrl+p
                - type start.
                - click the first file start.component.html
                - now you have opened the start page for the app
                - the angular app is on its way to use the new "standanlone" feature for all components but we're not yet there.
                    - this means that we still rely on app.module.ts
                    

    /martes/backend/ (python)

        - python code 
        - flask/socket io
        - served by gunicorn using eventlets (for socket io)
        - gunicorn should be configured to note code changes and reload when necessary.