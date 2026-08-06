# Rail Web App

A full-stack passenger train web application built with Flask and MySQL, deployed with Docker Compose and Nginx.

The app is initialized with random fake train route data in a MySQL database. Visitors can browse and search all train routes (departure, arrival, times, price) on the homepage. Users can register or log in - passwords are hashed with bcrypt and sessions are managed with Flask-Session - and logged-in users can save train routes to their profile and remove them from a personal "My Routes" page that also totals the cost of saved trips.

## Run

`docker-compose up` (the `init/` service seeds the database with fake data)
