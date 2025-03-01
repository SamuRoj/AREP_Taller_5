# Architectural Patterns



## Getting Started

### Prerequisites

### 1. **Java Development Kit (JDK)**

- To check if Java is installed, run:

```
java -version
```

- If Java is not installed, download it from the official Oracle [website](https://www.oracle.com/co/java/technologies/downloads/).

### 2. **Maven**

- To check if Maven is installed, run:

```
mvn --version
```

- If Maven is not installed, download it from the official Apache Maven [website](https://maven.apache.org/download.cgi).

### 3. Git

- To check if Git is installed, run:

```
git --version
```

- If Git is not installed, download it from the official Git [website](https://git-scm.com/downloads).

### Installing

1. Clone the repository to your local machine using Git.

```
git clone https://github.com/SamuRoj/AREP_Taller_5.git
```

2. Navigate to the project directory.

```
cd AREP_Taller_5
```

3. Levantar antes base de datos con Docker:

```
mvn clean install
```

4. Once the application is running, open your web browser and visit:

```
http://localhost:8080/index.html
```

## Features of the application



## Architecture

### Components Diagram



### Components



### Project Structure

Tree

## Docker and AWS Deployment

### Local Deployment

1. First from the root of the project execute the following command to create a new Docker image of the project.
   An image named `propertyserver` will be created from the instructions of the file named Dockerfile.

```
docker build --tag propertyserver .
```

2. It can be tested locally by creating the previous image and running the following command to create a container of
   the application

```
docker run -d -p 23727:6000 --name propertyservertest propertyserver
```

3. Now the application could be accessed through this link in a browser:

```
http://localhost:8080/index.html
```

### Video of local deployment

Demo that shows the previous steps working in three differente containers.

### Video with Dockerhub and AWS deployment working

This is a demo that shows the deployment of the image on DockerHub, the virtual machine used in AWS, the creation
of the container and the access to the server through the virtual machine showing all the features included in the
web application.

## Running the tests

- Execute them by running the following command:

```
mvn test
```

## Built With

* [Java Development Kit](https://www.oracle.com/co/java/technologies/downloads/) - Software Toolkit
* [Maven](https://maven.apache.org/) - Dependency Management
* [Docker](https://www.docker.com/) - Platform for building, running, and managing containerized applications
* [AWS](https://aws.amazon.com/es/) - Cloud computing platform for hosting, storage, and computing services
* [Git](https://git-scm.com/) - Distributed Version Control System

## Authors

* **Samuel Rojas** - [SamuRoj](https://github.com/SamuRoj)

## License

This project is licensed under the GNU License - see the [LICENSE.txt](LICENSE.txt) file for details.