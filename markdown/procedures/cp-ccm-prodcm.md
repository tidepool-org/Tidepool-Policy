### Production Deploy / Code Promotion Processes

In order to promote changes into Production, a valid and approved Change Request
(CR) is required. It can be created in the [Change Management System/Portal][1]
which implements the Tidepool Change Management workflow, using the 
(BACK) https:&#x2F;&#x2F;tidepool.atlassian.net project to manage
changes and approvals.

[1]: https://tidepool.atlassian.net

* At least two approvals are required for each PROD ticket.  By default, the
  approvers are

    - Backend Engineer peer review
    - VP of Engineering

* Additional approver(s) may be added depending on the impacted component(s).
  For example,

    - the IT Manager is added as an approver for IT/network changes; and
    - the DevOps or Security Lead is added as an approver for changes to `aws-Tidepool-infra`
      account in AWS.

* Each PROD ticket requires the following information at a minimum:

    - Summary of the change
    - Component(s) impacted
    - Justification

* Additional details are required for a code deploy, including at minimum:

    - Build job name
    - Build ID and/or number
    - Deploy action (e.g. plan, apply)
    - Deploy branch (e.g. master)
    - Links to pull requests and/or https:&#x2F;&#x2F;tidepool.atlassian.net issues
 