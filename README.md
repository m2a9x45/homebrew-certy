# Certy CLI

Simple CLI tool to make working with eIDAS QWACs & QSEALs simpler.

## What are eIDAS certificates?

eIDAS certificates are EU-compliant digital certificates used in PSD2 (Payment Services Directive 2) contexts:

- **QWAC** (Qualified Website Authentication Certificate) - Authenticates servers at the transport layer for TLS connections
- **QSEAL** (Qualified Electronic Seal) - Provides non-repudiation at the application layer, similar to a digital company seal

These certificates are issued by Qualified Trust Service Providers (QTSPs) and used by Third Party Providers (TPPs) to authenticate with banks and other financial institutions.

## Installation

### Homebrew

```shell
brew tap m2a9x45/certy
brew install certy
```

## Usage

### `certy fetch`

Fetch the EU QTSP trust list (list of qualified trust service providers and their certificates).

```shell
certy fetch
```

### `certy parse`

Parse a QWAC or QSEAL certificate and display its details, including the issuing certificate.

```shell
# From file
certy parse certificate.der

# From stdin
cat certificate.der | certy parse
```

### `certy pem`

Convert a DER-encoded certificate to PEM format.

```shell
cat certificate.der | certy pem
```

## Examples

```shell
certy parse qwac.pem
```

```
🔎 Certificate IDs:
  x5t: AbC1dEfGhIjKlMnOpQrStUvWxYz
  x5t#S256: 9F3aK2mN8pQw7rT5vB6cD1eF0gH2iJ3kL4mN5oP6
  Open Banking KID: EXAMPLE-KID-123456789

☘️ Certificate Info:
----------------------
Subject:
  Common Name: qwac.example-bank.test
  Organization: [Example Bank Digital Services Ltd]
  Locality: [Example City]
  Country: [EX]
  Serial Number: 12345678901234567890
  Org ID: PSDEX-TEST-000001

🇪🇺 Found Issuing Certificate:
----------------------------
Subject:
  Common Name: Example Trust Services G3 TLS RSA4096 SHA256 CA1
  Organization: [Example Trust Services Ltd]
  Country: [EX]

QTSP Dashboard Url: https://example.eidas.test/efda/trust-services/browse/tsp/example/service/1

🌴 Found Root Certificate:
----------------------------
Subject:
  Common Name: Example Root CA 1 G3
  Organization: [Example Certification Authority Ltd]
  Country: [EX]
```
