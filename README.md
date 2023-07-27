## Multi-Region VPC Peering

---

*This repository contains the Terraform scripts that you need to set up VPC peering between two VPCs in different regions.*

## Instructions

---

**To set up the multi-region VPC peering, you can follow these steps:**

1. Install Terraform.

2. Clone this repository.

3. Initialize Terraform.

4. Plan the infrastructure changes.

5. Apply the infrastructure changes.

## Demonstration

---

**To demonstrate that the VPC peering connection is working, you can create an EC2 instance in each VPC and ping the other instance.**

The following commands create an EC2 instance in the vpc_east VPC:

``````
terraform init
terraform plan
terraform apply
``````

The Terraform script create the following resources:

* Two VPCs in different regions.
* A VPC peering connection between the two VPCs.
* Two routing tables in each VPC, with a route to the peer VPC.

*Once the EC2 instance is created, you can use the following command to ping the EC2 instance in the vpc_west VPC:*

```````
ping 10.1.0.10
```````

If the ping succeeds, then the VPC peering connection is working and the EC2 instances can communicate with each other.

## Conclusion

---

The Terraform scripts and demonstration that I have provided show how to set up VPC peering between two VPCs in different regions. This can be used to ensure that resources in the two VPCs can communicate with low latency.