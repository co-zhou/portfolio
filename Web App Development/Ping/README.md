# Ping - Device Monitoring Web App

A full-stack web application that lets users monitor the network connectivity of devices. Users add devices by entering a URL or an IP address range, and the app continuously pings every device and displays the latest latency and uptime in real time.

Architecture is a multi-service setup run with Docker Compose: a Next.js/React frontend, a Node.js/Express API server, a dedicated ping worker service that probes devices on an interval, a MariaDB database, and an Nginx reverse proxy, each in its own container.

## Software Stack

- Docker (Docker Compose)
- MariaDB/MySQL
- Node.js, JavaScript
- Next.js/React.js, TypeScript
- TailwindCSS
- Nginx

## Run

`docker-compose up` (pull the images or build with `docker-compose build`).

Note: the site only works on the host machine by default. To access it from another device, add the host IP to `allowedOrigins` in `/gui/next.config.js` and rebuild.
