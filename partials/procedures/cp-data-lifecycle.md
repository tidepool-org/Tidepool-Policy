### Data Inventory and Lifecycle Management

Tidepool Security team uses an automated system to query across our cloud-based
infrastructure, including but is not limited to AWS, to obtain detailed records
of all data repositories, including but not limited to:

* AWS S3 repositories
* AWS RDS and DynamoDB instances
* AWS EC2 volumes
* Source code repositories
* Office 365
* On-premise storage systems (manually maintained)

The records are stored in a database system maintained by Tidepool security
team. Records are tagged with owner/project and classification when applicable.
All records are kept up to date via automation.  The system is also designed to
track movement of data and update/alert accordingly.

**AWS S3 Object Lifecycle Management**

The Tidepool platform will automatically adjust the storage class for certain
types of data based on its usage pattern and age. This allows the Tidepool
platform to provide competitive pricing while still allowing the customer to
store large amounts of data.

AWS provides the following [storage
classes](<https://aws.amazon.com/s3/storage-classes/>):

* General Purpose
* Infrequent Access
* Archive (Amazon Glacier)

S3 lifecycle policies are used to manage the storage class for certain types of
data. In most cases, the Tidepool platform automatically adjusts the storage
class but we may give customers the ability to adjust the storage class manually
to meet their pricing or performance needs.

Tidepool performs regular full backups of all production data. We leverage S3
lifecycle policies to automatically remove old backup data. This allows older
data to "age out" instead of having to explicitly delete it. S3 lifecycle
policies are also used to adjust the storage class of data backups based on the
age of the backup.

**Other Business Data**

All internal and confidential business records and documents, such as product
plans, business strategies, presentations and reports, are stored outside of an
employee workstation or laptop.

*   Official records are stored in record management systems such as
    - https:&#x2F;&#x2F;support.tidepool.org (tickets),
    - https:&#x2F;&#x2F;github.com&#x2F;tidepool-org (source code),
    -  (HR),
    -  (expense reports), etc.

*   Unstructured business documents such as Word documents, Excel spreadsheets
    and PowerPoint presentations are stored on Tidepool internal
    file share.

*   Confidential business documents/records are be stored in encrypted form and
    with access control enabled on a need-to-know basis.

**Transient Data Managemet**

Data may be temporarily stored by a system for processing. For example, a
storage device may be used to stage temp/raw files prior to being uploaded
to the production environment in AWS. These transient data repositories are not
intended for long term storage, and data is purged immediately after use.

*Tidepool currently does NOT use transient storage for any sensitive data.*
