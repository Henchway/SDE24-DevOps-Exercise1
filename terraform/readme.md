# Deployment


## Upload Docker image
1. Configure AWS (set credentials): `aws configure`
2. Login to docker repo: `aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 245154219216.dkr.ecr.us-east-1.amazonaws.com`
3. Tag the image: `docker tag scheibelhofer-devops-repo:latest 245154219216.dkr.ecr.us-east-1.amazonaws.com/scheibelhofer-devops-repo:latest`
4. Push the image: `docker push 245154219216.dkr.ecr.us-east-1.amazonaws.com/scheibelhofer-devops-repo:latest`

## Apply Terraform
(Note: I have a shortcut for terraform, that's why tf)

1. Run `tf init` to initialize the provider
2. Run `tf plan` to see the changes (only ECR creation at this point)
3. Run `tf apply --auto-approve` to create the ECR