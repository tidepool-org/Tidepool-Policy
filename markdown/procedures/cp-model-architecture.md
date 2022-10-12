### Security Architecture

Tidepool developed a security architecture on top of its three main
infrastructure environments - Cloud (AWS), DevOps, and workforce collaboration /
end-user computing.

#### Architecture Diagrams

Detailed architecture diagrams of the in-scope networks, endpoints, applications
as well as the security operations are developed and maintained by JupiterOne.

#### Cloud Architecture

##### Cloud Native

* Designed for the cloud using true multi-tenant architecture
* Auto scaling across multiple data centers in multiple regions around the world
* Tidepool services deployed inside private subnets of Virtual Private Cloud (VPC)
* Comprehensive security and compliance via AWS certifications
* Ongoing security testing by AWS and AWS customers

##### Customer Benefits

* Infrastructure is tailored to our customer's goals and usage patterns
* "Shared use" model reduces cost
* Nearly infinite compute and data capacity via AWS cloud provider
* Customers can focus on solving business problems and not worry about infrastructure
* Automatic backup and recovery
* Continuous improvements via change control process
* Faster adoption of new technology

##### Evolution of Cloud Computing

1. Baremetal

    - A computer in someone else's data center

1. Virtual Machine

    - A portion of a computer in someone else's data center
    - In AWS, a Virtual Machine is created from Amazon Machine Image (AMI)

1. Container

    - A package of essential application libraries and code but not
      the core OS libraries - Simpler to scale a docker image because - No
      duplication of core OS processes (networking, filesystem, etc) - Typically
      a Docker container nad in Tidepool's case is running inside Kubernetes

1. Function

    - Just the application code that runs in a pre-built container

Tidepool strives to leverage Kubernetes running managed in AWS as the primary building
blocks for our platform because:

* Infrastructure can be fully managed as code within Github, our source code management platform
* Managed Kubernetes (EKS on AWS) eliminates the need to operate and secure our own control plane
* Kubernetes allows us full visibility and auditability for all applications and services
* Application updates can be deployed constantly for security and maintainability with no interruption to services