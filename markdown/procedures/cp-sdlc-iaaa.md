
### Access Control of the Application (Identification, Authentication, Authorization, Accounting)

Tidepool external software application that is customer facing with
access to customer specific data, including sensitive information such as PII
and ePHI, implements strong access
control, covering the Identification, Authentication, Authorization, and
Accounting/Auditing (IAAA) of access and user activity.

The implementation ensures that

- the user requesting access is the one claimed (Identification and
  Authentication);

- only users authorized to access specific data
  (such as ePHI) are allowed to
  (Authorization); and

- their access activities are logs (Accounting/Auditing) according to the
  Tidepool auditing standards.

The current implementation leverages internal-keycloak for user identity management
and access.  

The backend platform implements granular Role-Based
Access Control (RBAC) for granting access to specific services and data based on
the attribute(s) of a principal (i.e. user requesting access -- an attribute
could be the role or group membership or organization the user belongs to) and
the attribute(s) of the requested resource (i.e. data or service -- an attribute
could be the project this data belongs to).

More implementation details are documented on the internal Engineering wiki.