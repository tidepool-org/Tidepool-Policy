### Multi-factor Authentication

Multi-factor authentication (MFA) is a standard control used by Tidepool to
provide strong access control to critical systems and applications, and should
be enabled whenever possible.

Tidepool implements Okta for MFA.

!!! important

    **Approved MFA methods include:**

    - Push notification delivered through the Okta mobile app (default and preferred for end-user access)
    - Hardware MFA token (required for the root user of AWS accounts)
    - A unique cryptographic certificate tied to a device
    - Time-based One-Time Password (TOTP) delivered through a mobile app, such as Google Authenticator
    - One-time passcode delivered through SMS text message (if it is the only supported option)
    - Secure physical facility (if the system or application can only be accessed at that location)
