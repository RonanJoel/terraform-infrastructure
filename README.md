### 🌍 Terraform Infrastructure Project

This repository demonstrates how to manage cloud infrastructure using Terraform, showcasing Infrastructure as Code (IaC) capabilities. It includes examples for creating AWS EC2 instances and S3 buckets.
📁 Repository Structure
```
terraform-infrastructure/
├── modules/
│   ├── ec2-instance.tf     # 🚀 EC2 instance configuration
│   └── s3-bucket.tf        # 📦 S3 bucket configuration
├── main.tf                 # 🛠 Main configuration for Terraform
├── variables.tf            # 📋 Variable definitions
└── README.md               # 📄 Documentation
```

### 💡 Project Features

    EC2 Instance: Creates a virtual machine with the specified AMI and instance type.
    S3 Bucket: Provisions a storage bucket with customizable options.
    Disaster Recovery Plan: Option to integrate backup and recovery strategies.
    Extendable: Add modules for creating databases and additional cloud services.

# 🚀 How to Use
1. Install Prerequisites

    Terraform:
    Download and install from the Terraform Website. Verify the installation:
```
terraform -version
```

AWS CLI:
Install from the AWS CLI Website. Configure credentials:

    aws configure

    Provide your Access Key ID, Secret Access Key, region (e.g., us-east-1), and output format (e.g., json).

# 2. Clone the Repository

Clone the repository and navigate into the project directory:
```
git clone https://github.com/RonanJoel/terraform-infrastructure.git
cd terraform-infrastructure
```

### 3. Initialize Terraform

Prepare the environment by initializing Terraform:
```
terraform init
```

### 4. Customize Variables

Update the variables.tf file or create a terraform.tfvars file to override default values. Example:

terraform.tfvars:
```
region         = "us-east-1"
ami_id         = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
instance_type  = "t2.micro"
bucket_name    = "my-unique-bucket-name-123"
environment    = "production"
```
### 5. Validate Configuration

Check the syntax of your Terraform configuration:
```
terraform validate

```

### 6. Plan Infrastructure

Preview the resources Terraform will create:
```
terraform plan
```

### 7. Apply Configuration

Deploy the infrastructure by applying the configuration:

terraform apply

    Terraform will ask for confirmation. Type yes to proceed.

### 8. Verify Resources

    In the AWS Console:
        Go to the EC2 Instances section to find your virtual machine.
        Navigate to S3 Buckets to see your provisioned storage.
    From the Terminal:
    Display all created resources:

    terraform show

### 9. Test EC2 InstancE

 Connect to the instance via SSH:

    ssh -i /path/to/your-key.pem ec2-user@<EC2-Public-IP>

Open a browser and access the instance's public IP to verify the NGINX server (if configured).


## 10. Clean Up Resources

To avoid incurring unnecessary charges, destroy all created resources:

terraform destroy

Type yes to confirm resource deletion.
🛠️ Customization

    Modify Variables: Adjust variables.tf or create a terraform.tfvars file for your project-specific values.
    Add Features: Extend the project with additional modules, such as database creation or advanced networking setups.
    Disaster Recovery: Include backup solutions, such as automated S3 versioning or AMI snapshots.

📝 Extras

    Disaster recovery plans and failover configurations.
    Examples of additional modules for databases and autoscaling groups.

📄 License

This project is licensed under the MIT License. See the LICENSE file for more details.
🎉 Congratulations!

You’ve successfully deployed and managed cloud infrastructure using Terraform! 🚀