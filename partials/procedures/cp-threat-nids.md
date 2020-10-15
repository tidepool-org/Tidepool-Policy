### Network Intrusion Detection

#### Intrusion Detection for On-Premise Internal Networks

* Tidepool leverages AWS GuardDuty and Cisco Meraki for network security of its on-premise
  environments.
* AWS GuardDuty and Cisco Meraki features stateful firewall inspection and intrusion
  detection/prevention (IDS/IPS) of applicable incoming and outgoing network
  traffic. Attacks and suspicious network activities are blocked automatically.
* Tidepool IT manager is responsible for configuring the firewall and IDS/IPS
  rules and review the configuration as least quarterly.

#### Intrusion Detection in AWS Cloud Environments

Tidepool implemented a real-time threat detection solution by
monitoring AWS Cloudtrail events and/or VPC flow logs.

* Cloudtrail events are monitored by **AWS GuardDuty and Cisco Meraki**
* VPC flow logs are sent to and analyzed by **AWS GuardDuty and Cisco Meraki**.

Additional monitoring is provided by our infrastructure service provider AWS.