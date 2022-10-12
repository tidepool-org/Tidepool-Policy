### Single Sign On

* Tidepool selected Google SSO as its primary Identity Provider (IdP) to control
  user access to systems and business applications.

* Single sign-on (SSO) should be used whenever possible instead of local
  authentication.  This centralized approach improves user experience and
  simplifies access management.

* SSO is configured via industry standard SAML protocol between the IdP (Google SSO)
  and the target application.

* Tidepool will not configure SSO to target applications unless they score a
  "B" rating or higher on the [Qualys SSL Labs](https://www.ssllabs.com/)
  benchmark.

* Security team is responsible for the administration of the IdP / SSO system,
  including user and access provisioning. Security team may delegate
  administrative privilege to a subset of the system, such as a specific
  application.