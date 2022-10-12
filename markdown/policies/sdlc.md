# Secure Software Development and Product Security

`2022.08.31`

Tidepool development team follows the latest security best practices when
developing software, and automates security testing throughout development
lifecycle whenever possible.

Security is integrated into all phases of Tidepool product development lifecycle,
including:

* Secure Design:
    * App Risk classification
    * Security req definition
    * Secure application design / RFC
    * Threat modeling
    * App data flow analysis
* Secure Development and Testing:
    * Secure coding guidelines
    * Peer review
    * Security testing that includes:
        * Linting with security rules
        * Open source security analysis
        * Static secure code analysis
        * Dynamic security analysis
        * Penetration testing
    * Responsible vulnerability disclosure / bug bounty program
* Remediation:
    * Follows defined vulnerability management lifecycle
    * Ensures no high risk security vulnerability is in production

Details about the Tidepool software application architecture and
security are documented on the [Tidepool Technical Documentation site](https://tidepool.atlassian.net/l/cp/PBK1MLhN) [Tidepool/s Engineering internal wiki](https://tidepool.atlassian.net/wiki/spaces/TE/overview).

## Policy Statements

Tidepool policy requires that:

(a) Tidepool software engineering and product development is required to follow
security best practices. Product should be "Secure by Design" and "Secure by
Default".

(b) Quality assurance activities must be performed. This may include

* peer code reviews prior to merging new code into the main development branch
(e.g. master branch); and
* thorough product testing before releasing to production (e.g. unit testing
and integration testing).

(c) Risk assessment activities (i.e. threat modeling) must be performed for a
new product or major changes to an existing product.

(d) Security requirements must be defined, tracked, and implemented.

(e) Security analysis must be performed for any Open Source software and/or
third-party components and dependencies included in Tidepool software products.

(f) Security analysis must be performed before integrating SaaS or applications handling different levels of data classification.

(g) Integration between systems containing or processing PHI and systems that do not is prohibited without the approval of the Security Officer and Privacy officer. 

(h) Static application security testing (SAST) should be performed throughout
development and prior to each release.

(i) Dynamic application security testing (DAST) should be performed prior to each
release.

(j) Open Source Library and license scanning must be performed prior to each release.

(k) All critical or high severity security findings must be remediated prior to
each release.

(l) All critical or high severity vulnerabilities discovered post release must
be remediated in the next release or within 30 days, whichever is sooner.

(m) Any exception to the remediation of a finding must be documented and
approved by the security team or VP of Engineering.
