### Policy Management Process

#### Document Structure

Policies are written in individual documents, each pertaining to a specific
domain of concern.

Each document starts with the current version number in the format of `YYYY.#`
(e.g. `2017.1`), followed by a brief summary.  The remaining of the document is
structured to contain the following subsections:

* Policy Statements
* Applicable Standards
* Controls and Procedures

#### Versioning

Each Tidepool policy document contains a version and optionally a
revision number. The version number is the four digit year followed by a number,
to indicate the year and sequence number of the policy at which time it was
written or updated.

The version number shall be incremented by one with each material change to the
policy content.  For example, if a new policy statement is added or a technical
control/procedure is updated to `2017.1` version of a policy, the new version
should be numbered `2017.2`.

The policy document may also include a revision number, in the format of
`rev.#`, immediately following the main version number. A revision number
indicate minor, non-material changes to the document, such as formatting
changes, fixing typos, or adding minor details.

#### Numbering

If sequencing numbers are included in the policy headings:

* Policy may be referenced by its statement number, such as `§2.1(a)`, in
  internal/external communications as well as in other Tidepool policies or
  technical/business documentation for cross reference.

* As such, to maintain cross referencing integrity, starting from version
  `2017.2`, all numbering shall remain intact for policy documents and
  statements.

* When updating, avoid reordering and renumbering of policy documents and
  statements. For example:

    - Append at the end of the list by adding new statement(s) as needed instead
      of inserting.
    - If a policy or policy statement is no longer applicable, mark it
      deprecated instead of removing the file or statement completely.

#### Review and Maintenance of Policies

1. All policies are stored and up to date to maintain Tidepool compliance with
   HIPAA, HITRUST and other relevant standards. Updates and version
   control are done similar to source code control.

2. Policy update requests can be made by any workforce member at any time.
   Furthermore, all policies are reviewed annually by the Security and Privacy
   Officer to assure they are accurate and up-to-date.

3. Tidepool employees may request changes to policies using the following
   process:

    1. The Tidepool employee initiates a policy change request by creating an
       Issue in the Tidepool JIRA [SECURITY project](https://tidepool.atlassian.net/jira/software/c/projects/SECURITY/boards/8) 
       or sending an email to [security@tidepool.org](mailto:security@tidepool.org). 

    2. The Security Officer or the Privacy Officer is assigned to review the
       policy change request.

    3. Once the review is completed, the Security Officer approves or rejects
       the Issue. If the Issue is rejected, it goes back for further review and
       documentation.

    4. If the review is approved, the Security Officer then marks the Issue as
       Done, adding any pertinent notes required.

    5. If the policy change requires technical modifications to production
       systems, those changes are carried out by authorized personnel using
       Tidepool's [change management process](ccm.md).

    6. If the change results in a new version instead of a new revision (see
       §3.3.1 for definitions), the current version of the policy document(s)
       must be saved to archive under the corresponding version number prior to
       the new policy being adopted/published and prior to merging the pull
       request containing the changes. This allows easy reference to previous
       versions if necessary.


4. All policies are made accessible to all Tidepool workforce members. The
   current master policies are published at
   [https://www.tidepool.org/security](https://www.tidepool.org/security).

    * The Security Officer or his designate communicates policy changes to all employees via
      email or Slack notifications via automation. These emails include a high-level description of the policy change
      using terminology appropriate for the target audience.
    * Changes to security policy may also be notified to all Tidepool users via the General Slack channel

5. All policies, and associated documentation, are retained for 7 years from the
   date of its creation or the date when it last was in effect, whichever is
   later

     1. Version history of all Tidepool policies is done via or JupiterOne and may also be stored in https:&#x2F;&#x2F;github.com&#x2F;tidepool-org .
     2. Backup and publishing of all policies is also integrated with Atlassian Confluence, as our company knowledge base.

6. The policies and information security policies are reviewed and audited
   annually, or after significant changes occur to Tidepool's
   organizational environment, by the security committee members. Issues that
   come up as part of this process are reviewed by Tidepool
   management to assure all risks and potential gaps are mitigated and/or fully
   addressed. The process for reviewing polices is outlined below:

    1. The Security Officer initiates the policy review by creating an Issue in
       the https:&#x2F;&#x2F;tidepool.atlassian.net SECURITY project or via a Pull Request (PR).
    2. The Security Committee members and additional reviewers are notified by
       email or via the PR to review the current policies.
    3. If changes are made, the above process is used. All changes are
       documented in the Issue/PR.
    4. Once the review is completed, the Security Officer approves or rejects
       the Issue/PR. If the Issue/PR is rejected, it goes back for further
       review and documentation.
    5. If the review is approved, the Security Officer then marks the Issue as
       Done, or merges the PR into master branch, adding any pertinent notes
       required.
    6. Policy review is monitored using https:&#x2F;&#x2F;tidepool.atlassian.net and JupiterOne
       reporting to assess compliance with above policy.


Additional documentation related to maintenance of policies is outlined in
[Roles and Responsibilities](rar.md).
