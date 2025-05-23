# AWS Infrastructure with Terraform

## 📌 Description

This project implements a basic AWS infrastructure using Terraform in a modular way. The goal is to deploy multiple EC2 instances automatically, following best practices such as the use of variables, reusable modules, outputs, and dynamic resource creation.

This activity helps you get familiar with the structure and workflow of a professional Terraform project and lays the foundation for automating cloud deployments declaratively and in an organized manner.

---

## 🛠 Technologies and Tools

- **Terraform** (>= 1.0)
- **AWS** (account and credentials configured)
- **AWS CLI** (optional, for validation)

---

## 🎯 Learning Objectives

By completing this project you will be able to:

- Declare and use variables in Terraform.
- Create and consume reusable modules.
- Use the `count` argument to create multiple resources.
- Expose key deployment information using outputs.

---

## 📂 Project Structure

```
/terraform-ec2
│
├── /modules
│   └── /ec2_instance       # Reusable module for EC2 instances
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf                 # Main configuration consuming the module
├── variables.tf            # Global variable declarations
├── outputs.tf              # Main project outputs
├── terraform.tfvars.example # Example variable values
├── .gitignore              # Git ignore file
├── LICENSE                 # Project license
└── README.md               # This file
```

---

## 🚀 Usage Instructions

1. **Clone the repository:**

    ```bash
    git clone <REPO_URL>https://github.com/jandresvr92/terraform-ec2.git
    cd terraform-ec2
    ```

2. **Configure your AWS credentials:**

    You must have run `aws configure` or set the appropriate environment variables.

3. **Edit the variables according to your context in `terraform.tfvars`:**

    - AMI ID
    - Instance type
    - Subnet
    - Security groups
    - Number of instances
    - Etc.

4. **Initialize and deploy the project:**

    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

5. **Review the deployment outputs:**

    The IDs and public IPs of the created EC2 instances will be displayed.

---

## 🌟 Features

- Parameterizable module for EC2 instances.
- Dynamic creation of multiple instances using `count`.
- Useful outputs: IDs and public IPs of the instances.
- Well-organized and easily extensible project.

---

## 📄 Example Module Usage

In `main.tf`, the module is used as follows:

```hcl
module "ec2_instances" {
  source              = "./modules/ec2_instance"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = var.subnet_id
  security_group_ids  = var.security_group_ids
  instance_count      = var.instance_count
  instance_name_prefix = var.instance_name_prefix
  tags                = var.tags
}
```

---

## 🤝 Contributions

Improvements are welcome! If you find opportunities to optimize or add functionality, open an issue or submit a PR.

---

## 📜 License

MIT

