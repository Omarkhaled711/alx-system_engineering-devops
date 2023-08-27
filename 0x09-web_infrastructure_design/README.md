# Web Infrastructure Design

## 0.Simple Web Stack

This task aims to design a simple web infrastructure for hosting the website "www.foobar.com." The infrastructure consists of a single server with the following components:

- Web Server: Nginx
- Application Server
- Application Files (Your Code Base)
- Database: MySQL

### 0.1 Design and Explanation

[0.Simple Web Stack](./0-simple_web_stack): A file that contains a link to the design image as a part of the requirements.

[Design Explanation](./0-Simple_Web_Stack.md): Explaining the design Infrastructure, and its issues.

## 1.Distributed web infrastructure

In this enhanced infrastructure, we will use three servers to host the website "www.foobar.com". The additional components are as follows:

- Web Server: Nginx
- Application Server
- Load Balancer: HAproxy
- Application Files (Your Code Base)
- Database: MySQL

### 1.1 Design and Explanation

[1.Distributed web infrastructure](./1-distributed_web_infrastructure): A file that contains a link to the design image as a part of the requirements.

[Design Explanation](./1-distributed_web_infrastructure.md): Explaining the design Infrastructure, and its issues.

## 2. Secured and monitored web infrastructure

In order to enhance the security, privacy, and monitoring capabilities of the three-server web infrastructure, several additional components are implemented. These additions address the requirements for improved protection, encrypted communication, and effective monitoring. The additional components are:

- 3 firewalls
- 1 SSL certificate to serve "www.foobar.com" over HTTPS
- 3 monitoring clients (data collector for Sumologic or other monitoring services)

## 2.1 Design and Explanation

[2. Secured and monitored web infrastructure](./2-secured_and_monitored_web_infrastructure): A file that contains a link to the design image as a part of the requirements.

[Design Explanation](./2-secured_and_monitored_web_infrastructure.md): Explaining the design Infrastructure, and its issues.

## 3. Scale Up

In this updated design, we have made significant modifications to the web infrastructure to improve scalability, performance, and fault tolerance. The following changes have been implemented:

- Splitting components onto their own servers
- Configuring both databases as primary databases for read and write operations
- Adding an additional load balancer and configuring it as a cluster with the existing load balancer.

## 3.1 Design and Explanation

[3. Scale up](./3-scale_up): A file that contains a link to the design image as a part of the requirements.

[Design Explanation](./3-scale_up.md): Explaining the design Infrastructure, and its issues.
