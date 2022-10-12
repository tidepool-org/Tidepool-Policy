# Configuration and Change Management

`2022.09.09`

Tidepool standardizes and automates configuration management through the use of
automation scripts as well as documentation of all changes to production systems
and networks. Automation tools such as Chef, Salt, and Terraform automatically
configure all Tidepool systems according to established and tested policies, and
are used as part of our Disaster Recovery plan and process.

## Policy Statements

Tidepool policy requires that:

(a) All production changes, including but not limited to software deployment,
feature toggle enablement, network infrastructure changes, and access control
authorization updates, must be invoked through approved change management
process.

(b) Each production change must maintain complete traceability to fully document
the request, including requestor, date/time of change, actions taken and
results.

(c) Each production change must be fully tested prior to implementation.

(d) Each production change must include a rollback plan to back out the change
in the event of failure.

(e) Each production change must include proper approval.

  * The approvers are determined based on the type of change.
  * Approvers must be someone other than the author/executor of the change.
  * Approvals may be automatically granted if certain criteria is met.
    The auto-approval criteria must be pre-approved by the Security Officer or VP of Engineering and
    fully documented and validated for each request.
