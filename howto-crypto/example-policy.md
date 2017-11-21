# Key Signing Policy of John Doe

This document describes the conditions and modes of my participation in the
GPG Web of Trust, including requests to prospective signers of my own Keys.

## My Key(s)

For primary communication and signing, I will use the key

    pub   rsa2048 2017-11-21 [SC] [expires: 2019-11-21]
          DC8A5728401260DC92089021FC2C353CED9F511E
    uid           John Doe <john.doe@example.org>
    sub   rsa2048 2017-11-21 [E] [expires: 2019-11-21]

You may obtain this key [from this website](john-doe.gpg) or by querying your
favourite key server.

I am in control of a set of expired keys, which are not to be used for
communication and are listed herein for the record

* 81A323FF94E15D5DD3FF61637253B674A77C07D7

## Signature prerequisites

In order to have your GPG Key signed by me (hereinafter the *signer*), the
following requirements are to be met by you (*signee*):

* The signee must provide the _full_ ID of the Key to be signed via a trusted
	mode of transport (eg. via a slip of paper personally handed over)
* The signee must present a _valid_ means of legal identification (eg. passport,
	drivers license or identity card) - this requirement may be relaxed
	for (obviously) pseudonymous entites, which may instead prove their
	ongoing and identifying use of that pseudonym.
* For photo UIDs, visual verification either in person or with the aforementioned
	means of legal identification is required.

Signatures by me will be sent to the signed UIDs via encrypted mail, as an
additional proof of control over the signed UIDs (the *email check*).
For UIDs referencing another mode of communication (eg. XMPP handles), another
means of transport may be arranged by agreement.

## Signature level indications

* **Level 0**
	* Used for signing keys of pseudonymous entities that have provided
		me with proof of control over the signed UIDs and their ongoing
		affiliation with the pseudonym.
		Signatures will only be provided to UIDs not obviously
		impersonating a well-known figure or entity.
* **Level 1**
	* Not used.
* **Level 2**
	* May be extended to persons known to me personally for over one year,
		but not verified with legal identification. Email check will
		still be performed.
* **Level 3**
	* Personal meeting, positive legal identity verification and email check
		performed.

## Submitting Signatures

I request that signatures on my keys be sent to the UIDs signed, respectively,
in encrypted form. Please do not upload new signatures to any of my Keys directly
to key servers.

## Document changelog

* (2017-11-21) Initial release and signing
