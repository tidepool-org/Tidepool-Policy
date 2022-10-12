### Backup and Recovery

#### Customer Data

Tidepool stores data in a secure production account in AWS, using a
combination of S3, DynamoDB, and Aurora SQL databases. By default, Amazon S3
provides durable infrastructure to store important data and is designed for
durability of 99.999999999% of objects.

All data store services and platforms in use are HIPAA compliant.

Tidepool performs automatic backup of all customer and system data to protect
against catastrophic loss due to unforeseen events that impact the entire
system. An automated process will back up all data to a separate AWS region in
the same country (e.g. US East to US West). By default, data will be backed up
daily. The backups are encrypted in the same way as live production data.

Customers can also utilize the Tidepool Application Programming Interface (API)
to extract and store their data elsewhere. Standard API usage fees will apply.

#### Source code

Tidepool stores its source in git repositories hosted by https:&#x2F;&#x2F;github.com&#x2F;tidepool-org.

Source code repositories are backed up to Tidepool’s AWS S3 infrastructure
account on a weekly basis with a common set of configuration for each repository
to enforce SDLC processes.

In the event that https:&#x2F;&#x2F;github.com&#x2F;tidepool-org suffers a catastrophic loss of data, source code
will be restored from the backups in AWS S3.

Because AWS and https:&#x2F;&#x2F;github.com&#x2F;tidepool-org can both host git repositories, we are able to
leverage git's ability to maintain a full history of all changes to our git
repos via the commit log.

#### Business records and documents

Each data owner/creator is responsible for maintaining a backup copy of their
business files local on their laptop/workstation to the appropriate location on
Tidepool Google Drive. Examples of business files include, but are not
limited to:

* Documents (e.g. product specs, business plans)
* Presentations
* Reports and spreadsheets
* Design files/images/diagrams
* Meeting notes/recordings
* Important records (e.g. approval notes)

Unless the local workstation/device has access to **Critical** data, backups of
user workstations/devices are self managed by the device owner. Backups may be
stored on an external hard drive or using a cloud service such as iCloud if and
only if the data is both encrypted and password protected (passwords must meet
Tidepool requirements).
