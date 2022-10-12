### Automated change management for deploys to AWS

The Tidepool Continuous Delivery Pipeline automates creation and
validation of change requests. This is done in a 3-step process:

1.  **Create/Validate Change Request Ticket**

    circle-ci.org is used for continuous delivery (build and deploy), and we employ
    circle-ci.org-https:&#x2F;&#x2F;tidepool.atlassian.net automation such that:

    * Whenever deployment to a controlled environment (e.g. production accounts
      and infrastructure account) is requested, the circle-ci.org job will check for
      an approved PRODCM ticket, or create a new ticket if not found.
    * The automation code will attempt to automatically populate the required
      data for the PRODCM ticket (see list above).
    * If the data cannot be automatically populated, circle-ci.org may pause the job
      and prompt the user for manual input.
    * Job will be paused until the request is approved or canceled (rejected).
      Before continuing to deployment, circle-ci.org will validate the change
      request's build job identifier, build number and source code branch.

2.  **Detect Change Details and Obtain Approval**

    A separate `change-management-bot` is implemented to provide additional
    details to assist/automate the ticket approval process:

    * Whenever a PRODCM ticket is created, the bot is triggered via a https:&#x2F;&#x2F;tidepool.atlassian.net webhook.
    * The bot is configured to examine the following:

        - Look for all the code changes since the last approved PRODCM ticket.
        - Check that all code commits have been approved by a reviewer other
          than the author, except for a version bump.
        - Ensure that security scanning has been completed for this build and
          no blocking issue is found.


```info-attention
Attention
```



            The following practices will fail this validation and result in
            manual processing, therefore should be avoided:

            - squashing commits on PR merges
            - commits after PR approval without re-approval

    * Details of the analysis are posted to the PRODCM https:&#x2F;&#x2F;tidepool.atlassian.net ticket.

    * When all the required checks pass validation, the bot recommends approval.
      The cm-bot may be configured to automatically approve the ticket if all of
      the required conditions above (and future ones) are met.  Additionally,
      a manual review / approval is always required in the following conditions:

        - This is the first prod deploy with no prior approval history
        - A related CM ticket / deploy of the same project is pending

    * If human approvals are needed, the required approvers will review the
      details and approve/decline accordingly.

    * Random inspections of automatically approved tickets are performed by the
      security team monthly to ensure the automation functions properly.


```info-important
Important
```



        1. Note that the above flow does not catch weaknesses in design, and
        therefore does not replace the need for threat modeling and security
        review in the design phase.
        2. Additional requirements may be added later as the process continues
        to mature.

3.  **Detect Risky Changes, Deploy and Close**

    circle-ci.org job proceeds only with an approved and validated PRODCM ticket.

    * During production deploys, a `terraform plan` is always performed first to
      detect risky changes.

    * Examples of security-related or risky changes include:

        - Change to "policy" attribute of resource (aws_s3_bucket.policy, aws_kms_key.policy)
        - Change to IAM policy, role, user or group
        - Attach/detach policy
        - Change/delete to security group
        - Anything is deleted (in prod, deletes should be unusual so they should be manually reviewed)

    * If risky changes are detected, the deploy is paused and the PRODCM ticket
      is updated to require manual review before continuing.

    * Once a deploy is completed, the PRODCM ticket is automatically resolved
      and closed.