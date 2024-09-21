# Azure Infrastructure Provisioning with Terraform

This repository contains Terraform scripts for provisioning essential Azure resources, including Resource Groups, Virtual Networks, Subnets, Virtual Machines, and SQL Databases. These scripts provide a foundational setup for deploying applications in the Azure cloud.

## Table of Contents
- [Overview](#overview)
- [Resources](#resources)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)

## Overview
Terraform is an open-source infrastructure as code (IaC) tool that enables you to define and provision infrastructure using a declarative configuration language. This repository demonstrates how to use Terraform to create and manage Azure resources effectively.

## Resources
This project provisions the following Azure resources:

### 1. Resource Group
A **Resource Group** is a logical container for Azure resources. It helps you manage and organize related resources in one place.

### 2. Virtual Network (VNet)
A **Virtual Network** allows secure communication between Azure resources. It acts as a private network in the cloud, enabling you to control IP address ranges and subnets.

### 3. Subnet
A **Subnet** is a segmented part of a Virtual Network. It helps improve performance and security by grouping resources based on functionality or access requirements.

### 4. Virtual Machine (VM)
A **Virtual Machine** is a cloud-based server that runs applications. With Azure VMs, you can deploy and manage workloads without the need for physical hardware.

### 5. SQL Database
An **SQL Database** in Azure provides a scalable and secure database solution for your applications. It supports high availability and manages the underlying infrastructure for you.

## Getting Started

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An active Azure account with proper permissions to create resources.

### Setup
1. Clone this repository:
   ```
   git clone [https://github.com/your-username/your-repo.git](https://github.com/AnaliseTerraform/scripts_terraform.git)
   cd scripts_terraform
   ```

2. Update the variables.tf file with your desired configuration values, such as resource group name, location, and SQL server credentials.

3. Usage
To provision the infrastructure, run the following commands in your terminal:

```
terraform init
terraform plan
terraform apply
```

4. Confirm the action when prompted.

 :speech_balloon: Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you have suggestions or improvements.
