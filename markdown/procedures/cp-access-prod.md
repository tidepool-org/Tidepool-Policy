### Production Access and Secrets Management

Tidepool leverages a combination of [circle-ci.org credentials
store](https://support.cloudbees.com/hc/en-us/articles/203802500-Injecting-Secrets-into-circle-ci.org-Build-Jobs),
[sops](https://github.com/mozilla/sops), and [Amazon KMS](https://docs.aws.amazon.com/kms/index.html)
to securely store production secrets.  Secrets are always encrypted; access to
secrets is always controlled and audited.

Tidepool utlizes sops for portablity and to ensure we can safely store and use secrets in source code

Details and usage are documented on the Tidepool Engineering Wiki.