# Terraform Modules

This site documents the Terraform modules used to provision SAP BTP subaccounts, enable Cloud Foundry, and subscribe to SAP Build Work Zone.

## Modules

- **BTPSA** creates a SAP BTP subaccount, establishes trust with SAP Cloud Identity Services, and assigns platform administrator and viewer groups.
- **BTPCF** enables a Cloud Foundry environment in an existing subaccount.
- **BTP Workzone** creates the Cloud Foundry resources and SAP BTP subscription required for SAP Build Work Zone and Task Center.

## Deployment Order

Apply the modules in the following order:

1. Create the subaccount with BTPSA.
2. Enable Cloud Foundry with BTPCF, using the subaccount ID and subdomain outputs.
3. Configure Workzone after the Cloud Foundry organization is available.

Each module is versioned independently. Select the documentation version that matches the module version used in your Terraform configuration.
