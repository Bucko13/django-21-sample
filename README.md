# django-21-sample
Making a sample bitcoin micropayments server with 21, Django, and Docker

## Setup
Make sure you have a .env file in your local repo, otherwise install won't work. This should include the following constants:
* `DATABASE_URL`, `SECRET_KEY`, `TWO1_USERNAME`, and `TWO1_WALLET_MNEMONIC`

To build:
+ build image (from top directory): `docker build -t micropayment_server .`
+ run (`sh` will start you in a shell in the container): `docker run -it micropayment_server sh` 
 * to run with docker compose, run `docker-compose up`. your django server will be accessible from localhost:8000
  * run with `-d` option to run as background process
  * `docker kill [CONTAINER]` to close running container
 * to enter the docker container shell run: `docker exec -it [container_id] sh` (run docker ps to get the list of running containers)
 

Commands:
+ `python manage.py publish` will publish the current manifest.yml to the 21 marketplace
+ `heroku run python manage.py publish -a YOUR_APP_NAME` to publish from heroku (thus using the local variables for the published app)

