# Docker WordPress with Nginx and MariaDB

This project provides a simple setup for running a WordPress website with Nginx as the web server and MariaDB as the database server, all orchestrated using Docker Compose.

## Prerequisites

Make sure you have Docker and Docker Compose installed on your system.

## Usage

1. Clone this repository to your local machine:

    ```
    git clone <repository-url>
    ```

2. Navigate to the project directory:

    ```
    cd <project-directory>
    ```

3. Create a `.env` file in the project root and define your environment variables. Example:

    ```
    DB_NAME=mydatabase
    USER_NAME=myusername
    USER_PASSWD=mypassword
    ADMIN_NAME=adminusername
    ADMIN_PASSWD=adminpassword
    ADMIN_EMAIL=admin@example.com
    AUTHOR_EMAIL=authoremail@example.com
    ```

4. Build and start the services:

    ```
    docker-compose up --build
    ```

5. Access WordPress in your browser:

    ```
    http://localhost:443
    ```

## Configuration

- **Nginx**: Nginx server configuration is located in `./requirements/nginx/`. You can modify the configuration files according to your requirements.

- **MariaDB**: MariaDB configuration can be adjusted via environment variables defined in the `.env` file.

- **WordPress**: WordPress setup files are located in `./requirements/wordpress/`. You can add themes, plugins, or modify the default setup as needed.

## Volumes

This project utilizes volumes to persist data. Make sure you have the necessary directories created on your host machine and adjust the `device` paths in the `docker-compose.yml` file accordingly.

- `mysql`: Volume for MariaDB data.

- `wp`: Volume for WordPress files.

## Networks

A dedicated network named `myNetwork` is created to allow communication between the services.

## Notes

- Ensure your host machine has proper permissions set for the directories mounted as volumes.

- This setup is intended for development or testing purposes. Adjustments may be needed for production deployment.

- For secure deployment, consider using SSL certificates and other security measures not covered in this basic setup.

Feel free to modify and extend this setup according to your project requirements!
