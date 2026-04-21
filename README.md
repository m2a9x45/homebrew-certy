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

### Pre-built binaries

Download the latest release from the [releases page](https://github.com/m2a9x45/certy/releases).

### From source

```shell
go install lewisdukelow.com/eidas/certy@latest
```

## Commands

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

### `certy fetch`

Fetch the EU QTSP trust list (list of qualified trust service providers and their certificates).

```shell
certy fetch
```

## Examples

### Parse a QWAC certificate

```shell
certy parse qwac.der
```

Output includes:
- Certificate type (QWAC or QSEAL)
- Subject information (organization, country, etc.)
- Validity period
- Issuing QTSP details
- Certificate chain
