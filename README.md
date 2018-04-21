# DjangoDockerApplication
This is a basic todo app in django which has been dockerized. Its meant to be a more complicated, we use mysql as a backend database.

## Requirements
- [x] Python version 2.7
- [x] Django version 1.9
- [x] MySQL database
- [x] Docker

## How to run project:
1. Clone or Download this repository.
2. Install the project dependencies.
    - pip install -r requirements.txt in your root project folder.
3. Setup the DATABASE conf
    - Create MySQL option file 'db.conf' in home directory
4. Create the new models in the app
    - python manage.py makemigrations tasks
5. Run database migrate
    - python manage.py migrate
6. Run the project
    - python manage.py runserver
7. See the project running on localhost
    - 127.0.0.1:8000
  
## How to run project("With DOCKER") && MYSQL:

This is a simple Docker project which creates containers running Django. Also contains phpMyAdmin to easily manage the database

### Tweaks
There are some tweaks needed before being able to run it. First of all change MYSQL_ROOT_PASSWORD, MYSQL_DATABASE, MYSQL_USER and MYSQL_PASSWORD in the file docker-compose.yml according to your project.

If you have an existing Python project, you have to change Dockerfile accordingly (lines #5 and #6). It is also needed to change line #16 from docker-compose.yml, changing the string djangoproject to the name you've given to your project, then run:

## How to run project:
```ruby
docker-compose up
```

A simple docker container that runs a basic django app. 

To build the image do:
```ruby
docker build -t dee/django https://github.com/Dieumerci/DjangoDockerApplication.git
```
To run a container do:
```ruby
docker run --name "django" -p 9080:80 -d -t dee/django
```

