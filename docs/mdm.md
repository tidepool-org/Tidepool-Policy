# Mobile Device Security and Storage Media Management

`2020.1`

Tidepool recognizes that media containing sensitive data may be
reused when appropriate steps are taken to ensure that all stored sensitive data
has been effectively rendered inaccessible. Destruction/disposal of sensitive
data shall be carried out in accordance with federal and state law. The schedule
for destruction/disposal shall be suspended for sensitive data involved in any
open investigation, audit, or litigation.

Tidepool utilizes virtual storage repositories such as AWS EBS
volumes and S3 buckets to store production data.  Volumes and repositories
utilized by Tidepool and Tidepool Customers are
encrypted. Tidepool does not use, own, or manage any mobile devices,
removable storage media, or backup tapes that have access to sensitive data.

## Policy Statements

Tidepool policy requires that:

(a) All media, including mobile and removable media, storing Tidepool company
data must be encrypted.

(b) Critical data as defined in [Tidepool data classification model
§data-management](data-mgmt.md) may not be stored on mobile devices or removable
media such as USB flash drives.

(c) All destruction/disposal of sensitive data storage media will be done in
accordance with federal and state laws and regulations and pursuant to the
Tidepool's written retention policy/schedule.

  * Records that have satisfied the period of retention will be
    destroyed/disposed of in an appropriate manner.
  * Records involved in any open investigation, audit or litigation should not
    be destroyed/disposed of.

(d) All sensitive data must rendered inaccessible in a forensically sound manner
prior to media reuse or disposal.

(e) Mobile devices, including laptops, smart phones and tables, used in support
of critical business operations shall be fully managed and/or audited by
Tidepool IT and Security.



## Controls and Procedures


### Media Disposal Process

IT and Security is responsible to ensure media containing critical / sensitive
data is disposed securely in the following manner:

* The methods of destruction, disposal, and reuse are reassessed periodically,
  based on current technology, accepted practices, and availability of timely
  and cost-effective destruction, disposal, and reuse technologies and services.
  This may include

    - Secure wipe;
    - Physical destruction;
    - Destruction of encryption keys (if the data on the media is encrypted
      using a strong algorithm such as AES-256).

* If the records have been requested in the course of a judicial or
  administrative hearing, a qualified protective order will be obtained to
  ensure that the records are returned to the organization or properly
  destroyed/disposed of by the requesting party.

* All Tidepool Subcontractors provide that, upon termination of the contract,
  they will return or destroy/dispose of all patient health information. In
  cases where the return or destruction/disposal is not feasible, the contract
  limits the use and disclosure of the information to the purposes that prevent
  its return or destruction/disposal.

*  In the cases of a Tidepool Customer terminating a contract with
   Tidepool and no longer utilize Tidepool Services,
   data will be returned or disposed per contract agreement or
   Tidepool Platform use terms and conditions. In all cases it is
   solely the responsibility of the Tidepool Customer to maintain
   the safeguards required of laws and regulations once the data is transmitted
   out of Tidepool environments.


### Use of USB Flash Drive and External Storage Device

Per Tidepool corporate policy, confidential and critical data may
not be stored on external devices such as USB flash drives.
This includes and is not limited to ePHI.
For definition of confidential and critical data, see
Tidepool Data Classification and Handling Policy.

Usage of USB flash drives for temporary transfer of confidential and critical
data may be allowed on a case by case basis, when the following process is
followed:

*   Data is only allowed on encrypted flash devices approved by Tidepool
    Security and the IT Manager (currently **IronKey**).
*   The process starts with the submission of a ticket in https:&#x2F;&#x2F;support.tidepool.org.
    The ticket must be approved by IT and Security.
*   Upon completion of data transfer all sensitive data on the device must be
    completely removed.
*   The device is to be returned to the IT Manager to double check that the data
    has been removed.
*   The IT Manager will check the drive back in.


### Support and Management of BYOD Devices

Tidepool provides company-issued laptops and workstations to all employees.


Mobile devices (including personal smart devices) may be used for business
purpoose under the following conditions and management:

- All employee mobile devices accessing or containing company data are
  inventoried and managed by IT using **Jamf**. The inventory will
  maintain current information on the owner of the device, its approved usages,
  installed applications, system status (operating system version and patches),
  and its state (e.g. in-use, lost, decommissioned).

- Mobile device management software is deployed to ensure the proper protection
  and configuration of mobile devices, including:

  - Encryption must be enabled for device storage
  - Device password must be enabled and meet security policy requirements
  - Device must be locked after 2 minutes of inactivity
  - Operating systems and patches are up to date

- All applications downloaded on employee mobile devices used for business
  purposes must be installed through a pre-approved app store or
  [application list](approved-software.md).

- Circumvention of built-in device security controls such as jailbreaking is
  strictly prohibited and enforced by detective or preventative software.

- Anti-malware software is installed and active on mobile devices. Alternatively,
  a sandbox environment is created on BYOD devices using the **Jamf**
  MDM solution to allow only white-listed application and data in a contained
  workspace.

- Any confidential or sensitive data is only allowed to be accessed via and
  stored inside the sandbox environment on mobile devices.

- Employees acknowledge that their mobile devices may be remotely controlled,
  locked or erased via the MDM software.

- Eligibility and usage of BYOD devices is subject to manager and/or IT/Security
  approval.



