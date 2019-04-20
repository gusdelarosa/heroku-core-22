# heroku-core-22

https://heroku-core-22.herokuapp.com/



Run a .NET core application in Heroku

``````
docker build -t heroku-core-22 --rm .


heroku container:push web -a heroku-core-22


heroku container:release web -a heroku-core-22
