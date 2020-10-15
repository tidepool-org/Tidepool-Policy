# Tidepool-Policy

This is a WIP effort to standardize process for editing and updating Tidepool IT Policies content to faciliate documenting compliance for audit purposes and to pre-assess and start preparing for a HiTech/HiTrust certification in the coming year.

Tidepool has existing policies that will be merged/integrated with these documents.

[Tidepool Public Security Documentation](https://tidepool.org/security) A good starting place for current policy, compliance and infrastructure documentation

# Publishing a new release of Tidepool-Policy
The intent of this script is to help automate the publishing and managing of policy content for the Tidepool Project.
Thanks to [JupiterOne](https://github.com/JupiterOne) for the tools to do this.

## Configuration

Run the following command to install the policy builder locally using NPM.

```npm install -g @jupiterone/security-policy-builder```

- See [security-policy-builder](https://github.com/JupiterOne/security-policy-builder) for more detailed info

1. Pull the most recent copy of the [Tidepool Policy](https://github.com/tidepool-org/Tidepool-Policy.git) templates

1. Configure variables for the needed account and API keys

### Code

#### Publish to JupiterOne

```sh
## Variables needed
TIDEPOOL_POLICY_DIR=~/src/Tidepool/Tidepool-Policy
# J1_ACCOUNT_ID=''
# J1_API_TOKEN=''
# ATLASSIAN_API=''

## publish to Jupiter one
psp build -c $TIDEPOOL_POLICY_DIR/templates/config.json -t $TIDEPOOL_POLICY_DIR/templates

psp publish -c $TIDEPOOL_POLICY_DIR/templates/config.json -t $TIDEPOOL_POLICY_DIR/templates -a $J1_ACCOUNT_ID -k $J1_API_TOKEN -u ben@tidepool.org --wait
```

#### Publish to Confluence

```sh
psp publish -c $TIDEPOOL_POLICY_DIR/templates/config.json --confluence --site tidepool --space TPOL -u ben@tidepool.org -k $ATLASSIAN_API -d $TIDEPOOL_POLICY_DIR/docs
```
