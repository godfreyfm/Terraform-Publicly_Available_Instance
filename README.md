# Deploying a publicly Accessible ec2 instance in AWS through IAC (Terraform)

In this project, we will deploy an EC2 instance on AWS. We will set up a new VPC, configure public and private subnets, and launch an EC2 instance using the Ubuntu AMI. Ensure to utilize Terraform for creating as many resources as possible, and remember to delete all resources at the end of the project to prevent unnecessary costs.
![Image of Architecture](./assets/Terraform-exercise-1.jpg))

# What my Tree Structure Looks Like
```
|-- backend.tf
|-- ec2_instances.tf
|-- main.tf
|-- modules
| |-- ec2_instance
| | |-- data.tf
| | |-- main.tf
| | |-- outputs.tf
| | |-- variables.tf
| |-- vpc_resources
| | |-- main.tf
| | |-- outputs.tf
| | |-- variables.tf
|-- outputs.tf
|-- provider.tf
|-- terraform.tfvars
|-- variables.tf
```
# Desired Outcome

1. Deploy a new VPC in your preferred AWS region.

2. Create a public subnet within the VPC.Ensure the public subnet is linked to a custom route table with a route to an Internet Gateway.

3. Set up a security group that permits traffic only on ports 80 (HTTP), 443 (HTTPS), and 22 (SSH) from your IP or publicly if you are aware of the implications.

4. Launch an EC2 instance in the public subnet using the Ubuntu AMI (Tip: Utilize data sources).

5. Attach the instance to the created security group and verify that you can access the server via SSH using its public IP.

6. Tag resources with relevant information about your project.

7. Ensure all resources are deleted at the end of the project to avoid unnecessary costs!

#### Comment your thoughts on the subject

- Comments on the subject are welcome !!!
