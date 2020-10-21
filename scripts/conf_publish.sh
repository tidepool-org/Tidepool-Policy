#!/bin/sh

# VARIABLES needed

# TIDEPOOL_POLICY_DIR=/src/Tidepool/Tidepool-Policy
# J1_ACCOUNT_ID=''
# J1_API_TOKEN=''
# ATLASSIAN_API=''
## Atlassian personal access token neeed above
# ATLASSIAN_ID=''
## Tidepool email needed

echo "starting publish of policy docs to tidepool.atlassian.net from {$TIDEPOOL_POLICY_DIR}"
echo "this will take about a minute or so, please wait"

cd $TIDEPOOL_POLICY_DIR

psp publish -c $TIDEPOOL_POLICY_DIR/templates/config.json --confluence --site tidepool --space TPOL -u $ATLASSIAN_ID -k $ATLASSIAN_API -d $TIDEPOOL_POLICY_DIR/docs

echo "all done"
