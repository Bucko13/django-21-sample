# django-21-sample
Making a sample bitcoin micropayments server with 21, Django, and Docker

## Setup
* Make sure you have a .env file in your local repo, otherwise install won't work
1) build image (from top directory): `docker build -t micropayment_server .`
2) run (`sh` will start you in a shell in the container): `docker run -it micropayment_server sh` 
 * to run with docker compose, run `docker-compose up`. your django server will be accessible from localhost:8000
 