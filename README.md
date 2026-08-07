Enterprise Nginx Web Server Deployment Using Docker



Project Overview



This project demonstrates the containerized deployment of a static website using Docker and Nginx.



The solution focuses on creating a reliable and portable web server environment by packaging a website application into a Docker container. Nginx is configured as the web server, while Docker provides a consistent runtime environment for deployment.



The implementation covers the complete container deployment workflow:



\- Creating a custom Docker image

\- Configuring Nginx to serve web content

\- Deploying and managing a Docker container

\- Exposing application services through container port mapping

\- Validating successful application deployment



This project showcases the use of containerization principles to deliver a repeatable and efficient web server deployment.





\## Architecture Overview



The application uses a containerized deployment workflow built with Docker and Nginx.



The workflow begins with the website source code, which is packaged into a custom Docker image using a Dockerfile. The image is then deployed as a Docker container running an Nginx web server. The container exposes port \*\*8080\*\*, making the application accessible through a web browser.



This architecture provides a lightweight, portable, and consistent deployment process across different environments.





\## Docker Architecture Diagram



The architecture diagram below illustrates the complete deployment flow, from source code to the running Nginx container.



!\[Docker Architecture](screenshots/docker-architecture-diagram.png)

Deployment Flow



1\. Website files are stored in the project repository.

2\. A Dockerfile defines the application environment using the official Nginx image.

3\. Docker builds a custom image containing the website files.

4\. A container is created from the image.

5\. Nginx serves the application through the exposed container port.





Technologies Used



Technology| Purpose

Docker| Containerization and application deployment

Nginx| Web server for hosting static content

HTML| Website structure

CSS| Website styling

JavaScript| Client-side functionality

Git \& GitHub| Version control and source management

PowerShell| Docker command execution





&#x20;Project Structure



enterprise-nginx-webserver

│

├── docker

│   └── Dockerfile

│

├── docs

│

├── screenshots

│

├── scripts

│

└── src

&#x20;   ├── index.html

&#x20;   ├── css

&#x20;   ├── images

&#x20;   └── js





Docker Deployment Process



1\. Build Docker Image



The Docker image is created using the project Dockerfile:



docker build -f ./docker/Dockerfile -t enterprise-nginx-webserver:v1 .



This creates a custom Nginx-based image containing the website application files.





2\. Run Docker Container



The application container is deployed using:



docker run -d -p 8080:80 --name enterprise-nginx enterprise-nginx-webserver:v1



Port Mapping



Host Machine Port 8080

&#x20;       |

&#x20;       v

Container Port 80

&#x20;       |

&#x20;       v

Nginx Web Server





3\. Verify Container Deployment



The running container can be verified with:



docker ps



Expected output:



enterprise-nginx-webserver:v1

STATUS: Running

PORT: 8080->80



4\. Access the Application



The deployed application can be accessed through the exposed host port:



http://localhost:8080





\## Deployment Evidence



The `screenshots` directory contains deployment validation evidence demonstrating the successful containerization and deployment process.



\### Docker Image Build



The Docker image was successfully built using the custom Dockerfile configuration.



!\[Docker Build](screenshots/docker-build.png)



\### Docker Image Verification



The generated Docker image is available locally and ready for container deployment.



!\[Docker Images](screenshots/docker-images.png)



\### Running Container



The Nginx container is running successfully and serving the web application through the exposed port.



!\[Running Container](screenshots/docker-container-running.png)



Project Presentation Video



A walkthrough presentation will cover:



\- Project architecture

\- Dockerfile configuration

\- Docker image creation

\- Container deployment process

\- Challenges encountered and solutions implemented



Video Link:



(Add presentation video link here)





Challenges Encountered \& Solutions



1. Docker Image Tag Correction



During deployment, an incorrect image tag was identified.



The container was recreated using the correct image version:



enterprise-nginx-webserver:v1



2\. Container Name Conflict



When redeploying the application, Docker detected an existing container using the same name.



The issue was resolved by stopping and removing the previous container before creating a new deployment.



Commands used:



docker stop enterprise-nginx



docker rm enterprise-nginx





Future Enhancements



Potential improvements for future versions include:



\- Deploying the containerized application to a cloud environment

\- Implementing CI/CD automation with GitHub Actions

\- Adding HTTPS support with SSL certificates

\- Optimizing Docker image size

\- Implementing container health monitoring





Author



Genesis Ojonukpe Peter



Cloud/DevOps Engineer



Focused on:



\- Containerization

\- Cloud Infrastructure

\- Automation

\- Deployment Workflows

