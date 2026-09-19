# Getting Started

## Prerequisites

- Terraform `1.14.0` or later.
- Credentials and permissions for the SAP BTP Terraform provider.
- Cloud Foundry credentials and permissions when using the Workzone module.
- A SAP Cloud Identity Services tenant for platform and business-user trust configuration.

Configure providers in the root configuration that calls a module. Modules do not configure provider authentication themselves.

## Typical Workflow

1. Initialize the root configuration with `terraform init`.
2. Review the proposed infrastructure with `terraform plan`.
3. Apply the subaccount module and retain its ID and subdomain outputs.
4. Apply the Cloud Foundry module, then wait for the environment to finish provisioning.
5. Apply the Workzone module with the Cloud Foundry organization ID.

Run `terraform destroy` only after confirming that dependent SAP BTP subscriptions, Cloud Foundry service instances, and application data can be removed.
