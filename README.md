# heroku-core-22

https://heroku-core-22.herokuapp.com/

``````
docker build -t heroku-core-22 --rm .


heroku container:push web -a heroku-core-22


heroku container:release web -a heroku-core-22
