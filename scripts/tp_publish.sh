#!/bin/sh

# VARIABLES needed

# TIDEPOOL_POLICY_DIR=/src/Tidepool/Tidepool-Policy
# J1_ACCOUNT_ID=''
# J1_API_TOKEN=''
# J1_USERID=''
## Tidepool email address needed above


cd $TIDEPOOL_POLICY_DIR

psp build -c $TIDEPOOL_POLICY_DIR/templates/config.json -t $TIDEPOOL_POLICY_DIR/templates;

psp publish -c $TIDEPOOL_POLICY_DIR/templates/config.json -t $TIDEPOOL_POLICY_DIR/templates -a $J1_ACCOUNT_ID -k $J1_API_TOKEN -u $J1_USERID;