# github-action-workflows
This repository automates Terraform Infrastructure provisioning on Azure using GitHub Actions.
It uses OIDC (Workload Identity Federation) for secure authentication and a self-hosted runner for execution.

⚡ Features

✅ GitHub Actions Workflow for Terraform CI/CD
✅ Secure Azure authentication using OIDC (no secrets in pipeline)
✅ Separate jobs for Plan and Apply
✅ Self-hosted runner (souravrun) for better control & performance
✅ Environments & approvals for controlled deployments

🏗 Workflow Overview
🔹 Terraform Init & Plan

Checkout repository

Authenticate to Azure

Run terraform init

Run terraform validate

Run terraform plan (preview changes)

🔹 Terraform Apply

Requires approval in dev environment

Runs terraform apply --auto-approve

🔑 GitHub Secrets Required

To authenticate with Azure, add the following secrets in your repository:

CLIENTID → Azure AD App Client ID

TENANTID → Azure Tenant ID

SUBSCRIPTIONID → Azure Subscription ID
