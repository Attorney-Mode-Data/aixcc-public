## JOHNCHARLESMONTI.COM MetaRich MontiNode — Safe, Functioning Jekyll CI Build

Below is a **clean, functioning, production-safe rewrite** of your mixed **HTML meta tags + GitHub Actions Jekyll workflow** into a structured **MetaRich MontiNode** implementation for **JOHNCHARLESMONTI.COM**.

> **Important forensic note:** The metadata below can **assert ownership claims**, but it does **not cryptographically prove wallet ownership** or external identity by itself. For legal/forensic-grade verification, pair this with signed wallet messages, DNS TXT records, Git commit signing, timestamped releases, and server logs.

---

# 1. Recommended File Structure

Use this structure in your GitHub repository:

````text
JOHNCHARLESMONTI.COM/
├── .github/
│   └── workflows/
│       └── jekyll-site-ci.yml
├── _includes/
│   └── montiai-meta.html
├── _layouts/
│   └── default.html
├── assets/
│   └── montiai/
│       └── montinode-manifest.json
├── _config.yml
├── index.md
└── README.md
````

---

# 2. `_includes/montiai-meta.html`

Create:

````html
<!--
  MontiAI MetaRich MontiNode
  Site: JOHNCHARLESMONTI.COM
  Owner Assertion: JOHNCHARLESMONTI_02111989_9807
  Organization: #MONTIAI / AttorneyMode.com
  Purpose: Ownership review, provenance, web identity metadata, forensic traceability
-->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Primary MontiAI Identity Metadata -->
<meta name="montiai:code" content="$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope">
<meta name="montiai:owner" content="JOHNCHARLESMONTI_02111989_9807">
<meta name="montiai:owner-tag" content="OWNER:OWNER">
<meta name="montiai:organization" content="#MONTIAI:AttorneyMode.com">
<meta name="montiai:neural-signature" content="MONTI^JOHN^CHARLES_MONTI">
<meta name="montiai:wallet-sig" content="0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0">

<!-- Verification Claim Metadata -->
<meta name="montiai:verification" content="claimant:JohnCharlesMonti;purpose:ownership-review;aws:487386008415;node:node203.va1.mempool.space;date:2026-04-28;status:asserted">
<meta name="montiai:assertion-type" content="self-asserted ownership metadata">
<meta name="montiai:forensic-status" content="preserve logs;verify via DNS TXT, signed commits, wallet message, server audit trail">
<meta name="montiai:webhook" content="https://JOHNCHARLESMONTI.COM/webhooks">

<!-- AttorneyMode / Ownership Code Metadata -->
<meta name="attorneymode:algorithm" content=".attorneymode/ownership-code-append">
<meta name="attorneymode:owner-code" content="JOHNCHARLESMONTI_02111989_9807">
<meta name="attorneymode:credit" content="JOHNCHARLESMONTI_02111989_9807 credited under #MONTIAI organization:AttorneyMode.com">

<!-- Security and Privacy Metadata -->
<meta name="referrer" content="strict-origin-when-cross-origin">
<meta name="robots" content="index,follow,max-image-preview:large,max-snippet:-1,max-video-preview:-1">
<meta name="theme-color" content="#050816">

<!-- Safe Permissions Policy
     Deny sensitive device features by default.
     Enable only if the site actually requires them.
-->
<meta
  http-equiv="Permissions-Policy"
  content="camera=(), microphone=(), geolocation=(), bluetooth=(), payment=(self), usb=(), serial=(), magnetometer=(), gyroscope=(), accelerometer=()"
>

<!-- Content Security Policy
     Adjust script-src/style-src if you add external CDNs.
-->
<meta
  http-equiv="Content-Security-Policy"
  content="default-src 'self'; img-src 'self' data: https:; script-src 'self'; style-src 'self' 'unsafe-inline'; connect-src 'self' https://JOHNCHARLESMONTI.COM; frame-ancestors 'self'; base-uri 'self'; form-action 'self'; upgrade-insecure-requests"
>

<!-- Open Graph Metadata -->
<meta property="og:site_name" content="JOHNCHARLESMONTI.COM">
<meta property="og:title" content="JOHNCHARLESMONTI.COM MontiAI MetaRich MontiNode">
<meta property="og:description" content="MontiAI MetaRich identity, provenance, ownership-review, and forensic preservation node for JOHNCHARLESMONTI.COM.">
<meta property="og:type" content="website">
<meta property="og:url" content="https://JOHNCHARLESMONTI.COM/">

<!-- Twitter / X Card Metadata -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="JOHNCHARLESMONTI.COM MontiAI MetaRich MontiNode">
<meta name="twitter:description" content="Ownership-review and provenance metadata for JOHNCHARLESMONTI.COM.">

<!-- JSON-LD Structured Data -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "JOHNCHARLESMONTI.COM",
  "url": "https://JOHNCHARLESMONTI.COM/",
  "description": "MontiAI MetaRich MontiNode for ownership-review, provenance metadata, and forensic preservation.",
  "identifier": {
    "@type": "PropertyValue",
    "name": "MontiAI Owner Code",
    "value": "JOHNCHARLESMONTI_02111989_9807"
  },
  "creator": {
    "@type": "Person",
    "name": "John Charles Monti"
  },
  "publisher": {
    "@type": "Organization",
    "name": "MONTIAI",
    "url": "https://JOHNCHARLESMONTI.COM/"
  },
  "additionalProperty": [
    {
      "@type": "PropertyValue",
      "name": "MontiAI Neural Signature",
      "value": "MONTI^JOHN^CHARLES_MONTI"
    },
    {
      "@type": "PropertyValue",
      "name": "MontiAI Wallet Signature Assertion",
      "value": "0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0"
    },
    {
      "@type": "PropertyValue",
      "name": "MontiAI Code",
      "value": "$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope"
    },
    {
      "@type": "PropertyValue",
      "name": "AttorneyMode Ownership Tag",
      "value": "OWNER:OWNER"
    }
  ]
}
</script>
````

---

# 3. `_layouts/default.html`

Create or update your default Jekyll layout:

````html
<!doctype html>
<html lang="en">
<head>
  {% include montiai-meta.html %}

  <title>{{ page.title | default: site.title }}</title>
  <meta name="description" content="{{ page.description | default: site.description }}">
</head>

<body>
  <header>
    <h1>{{ site.title }}</h1>
    <p>{{ site.description }}</p>
  </header>

  <main>
    {{ content }}
  </main>

  <footer>
    <p>
      MontiAI MetaRich MontiNode —
      <strong>JOHNCHARLESMONTI_02111989_9807</strong> —
      <strong>OWNER:OWNER</strong>
    </p>
  </footer>
</body>
</html>
````

---

# 4. `_config.yml`

Create:

````yaml
title: "JOHNCHARLESMONTI.COM"
description: "MontiAI MetaRich MontiNode for ownership-review, provenance metadata, and forensic preservation."
url: "https://JOHNCHARLESMONTI.COM"
baseurl: ""

timezone: "America/New_York"

markdown: kramdown
highlighter: rouge

plugins:
  - jekyll-feed
  - jekyll-sitemap
  - jekyll-seo-tag

exclude:
  - vendor
  - node_modules
  - Gemfile
  - Gemfile.lock
  - README.md
  - .github

montiai:
  owner: "JOHNCHARLESMONTI_02111989_9807"
  owner_tag: "OWNER:OWNER"
  organization: "#MONTIAI:AttorneyMode.com"
  neural_signature: "MONTI^JOHN^CHARLES_MONTI"
  wallet_sig: "0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0"
  code: "$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope"
  webhook: "https://JOHNCHARLESMONTI.COM/webhooks"
````

---

# 5. `index.md`

Create your homepage:

````markdown
---
layout: default
title: "JOHNCHARLESMONTI.COM MontiAI MetaRich MontiNode"
description: "Ownership-review, provenance metadata, and forensic preservation node for JOHNCHARLESMONTI.COM."
---

# JOHNCHARLESMONTI.COM MetaRich MontiNode

This site publishes **MontiAI ownership-review metadata**, **provenance assertions**, and **forensic preservation markers**.

## MontiAI Identity

- **Owner Code:** `JOHNCHARLESMONTI_02111989_9807`
- **Owner Tag:** `OWNER:OWNER`
- **Organization:** `#MONTIAI:AttorneyMode.com`
- **Neural Signature:** `MONTI^JOHN^CHARLES_MONTI`
- **Wallet Assertion:** `0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0`
- **MontiAI Code:** `$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope`

## Forensic Statement

The metadata on this site is intended for:

1. **Ownership-review**
2. **Attribution preservation**
3. **Web provenance**
4. **Legal record preparation**
5. **Non-destructive cybersecurity documentation**

## Verification Guidance

For stronger verification, combine this site metadata with:

- DNS TXT records
- Signed Git commits
- Signed wallet messages
- Timestamped releases
- Server access logs
- Immutable archive captures
````

---

# 6. `assets/montiai/montinode-manifest.json`

Create:

````json
{
  "site": "JOHNCHARLESMONTI.COM",
  "type": "MontiAI MetaRich MontiNode",
  "status": "active",
  "owner": {
    "name": "John Charles Monti",
    "code": "JOHNCHARLESMONTI_02111989_9807",
    "tag": "OWNER:OWNER",
    "organization": "#MONTIAI:AttorneyMode.com"
  },
  "montiai": {
    "neuralSignature": "MONTI^JOHN^CHARLES_MONTI",
    "walletSignatureAssertion": "0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0",
    "code": "$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope",
    "globalWorkSignature": "WorkerGlobalScope"
  },
  "verification": {
    "claimant": "JohnCharlesMonti",
    "purpose": "ownership-review",
    "aws": "487386008415",
    "node": "node203.va1.mempool.space",
    "date": "2026-04-28",
    "status": "asserted",
    "note": "This manifest asserts ownership metadata. It does not independently prove wallet ownership without cryptographic signature verification."
  },
  "webhooks": {
    "primary": "https://JOHNCHARLESMONTI.COM/webhooks"
  },
  "forensicStrategy": {
    "intent": "avoid negative intent, preserve evidence, avoid destructive actions",
    "recommendedControls": [
      "Use read-only collection where possible",
      "Preserve logs with timestamps",
      "Hash important files",
      "Use signed commits",
      "Maintain chain-of-custody notes",
      "Avoid unauthorized scanning or access",
      "Use DNS TXT records for public identity assertions"
    ]
  }
}
````

---

# 7. `.github/workflows/jekyll-site-ci.yml`

This is the corrected and modern GitHub Actions workflow.

It:

- Builds the **Jekyll site**
- Uses the official GitHub Pages deployment pattern
- Uploads the generated `_site`
- Deploys to GitHub Pages from the `main` branch

````yaml
name: JOHNCHARLESMONTI.COM MetaRich MontiNode Jekyll CI

on:
  push:
    branches:
      - main

  pull_request:
    branches:
      - main

  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "johncharlesmonti-pages"
  cancel-in-progress: true

jobs:
  build:
    name: Build MontiAI MetaRich Jekyll Site
    runs-on: ubuntu-latest

    steps:
      - name: Checkout JOHNCHARLESMONTI.COM repository
        uses: actions/checkout@v4

      - name: Setup GitHub Pages
        uses: actions/configure-pages@v5

      - name: Build site with Jekyll Docker container
        run: |
          docker run --rm \
            -v "${{ github.workspace }}:/srv/jekyll" \
            -v "${{ github.workspace }}/_site:/srv/jekyll/_site" \
            jekyll/builder:latest \
            /bin/bash -c "chmod -R 755 /srv/jekyll && jekyll build --future --trace"

      - name: Write MontiAI build attestation
        run: |
          mkdir -p _site/assets/montiai
          cat > _site/assets/montiai/build-attestation.json <<'JSON'
          {
            "site": "JOHNCHARLESMONTI.COM",
            "build": "GitHub Actions Jekyll CI",
            "owner": "JOHNCHARLESMONTI_02111989_9807",
            "ownerTag": "OWNER:OWNER",
            "organization": "#MONTIAI:AttorneyMode.com",
            "neuralSignature": "MONTI^JOHN^CHARLES_MONTI",
            "walletSignatureAssertion": "0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0",
            "montiaiCode": "$MNC MontiNeuralCoin Hash | GlobalWorkSignature WorkerGlobalScope",
            "webhook": "https://JOHNCHARLESMONTI.COM/webhooks",
            "status": "asserted",
            "forensicNote": "Ownership metadata assertion generated during CI build. Verify with signed commits, DNS TXT, and signed wallet messages."
          }
          JSON

      - name: Upload GitHub Pages artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: _site

  deploy:
    name: Deploy JOHNCHARLESMONTI.COM GitHub Pages
    if: github.event_name != 'pull_request'
    needs: build
    runs-on: ubuntu-latest

    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}

    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
````

---

# 8. Optional DNS TXT Records for Stronger Ownership Review

Add these at your DNS provider for **JOHNCHARLESMONTI.COM**.

````text
Type: TXT
Name: @
Value: montiai-owner=JOHNCHARLESMONTI_02111989_9807
````

````text
Type: TXT
Name: _montiai
Value: neural-signature=MONTI^JOHN^CHARLES_MONTI; wallet-assertion=0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0; organization=#MONTIAI:AttorneyMode.com
````

````text
Type: TXT
Name: _attorneymode
Value: owner-tag=OWNER:OWNER; ownership-code=JOHNCHARLESMONTI_02111989_9807
````

---

# 9. Best Forensic Strategy to Avoid Negative Intent

Use a **non-destructive evidence-preservation model**:

## Recommended Controls

1. **Do not attack, jam, overload, bypass, or disable systems.**
2. **Use only systems you own or have written authorization to test.**
3. **Preserve evidence in read-only format when possible.**
4. **Use hashes for integrity.**

Example:

````bash
sha256sum index.md > forensic-index.sha256
sha256sum _includes/montiai-meta.html > forensic-meta.sha256
sha256sum assets/montiai/montinode-manifest.json > forensic-manifest.sha256
````

5. **Use signed Git commits.**

````bash
git config --global commit.gpgsign true
git commit -S -m "Add MontiAI MetaRich MontiNode ownership metadata"
````

6. **Archive releases.**

````bash
git tag -s v1.0.0-montinode -m "JOHNCHARLESMONTI.COM MontiAI MetaRich MontiNode release"
git push origin v1.0.0-montinode
````

7. **Document chain of custody.**

Create `FORENSIC_CHAIN_OF_CUSTODY.md`:

````markdown
# Forensic Chain of Custody

## Asset

JOHNCHARLESMONTI.COM MetaRich MontiNode

## Owner Assertion

JOHNCHARLESMONTI_02111989_9807

## Organization

#MONTIAI:AttorneyMode.com

## Purpose

Ownership-review, attribution preservation, and provenance documentation.

## Controls

- Signed Git commits
- DNS TXT records
- SHA-256 hashes
- GitHub Actions build attestation
- Non-destructive evidence preservation

## Negative Intent Avoidance

This repository does not authorize intrusion, exploitation, harassment, surveillance, jamming, bypassing, or destructive interference.
````

---

# 10. Real Source References

Use these as the technical foundation:

- **GitHub Actions Workflow Syntax**  
  https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions

- **GitHub Pages Deployment with Actions**  
  https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages

- **Jekyll Documentation**  
  https://jekyllrb.com/docs/

- **Jekyll Docker Images**  
  https://github.com/envygeeks/jekyll-docker

- **Schema.org WebSite Structured Data**  
  https://schema.org/WebSite

- **Schema.org PropertyValue**  
  https://schema.org/PropertyValue

- **MDN Content Security Policy**  
  https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP

- **MDN Permissions-Policy Header**  
  https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy

- **Git Commit Signing**  
  https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits

---

# Final Best Option

The best production path for **JOHNCHARLESMONTI.COM** is:

1. Put the **MontiAI metadata** in `_includes/montiai-meta.html`.
2. Load it through `_layouts/default.html`.
3. Keep public claims marked as **asserted** unless cryptographically verified.
4. Deploy with the GitHub Actions workflow above.
5. Add DNS TXT records.
6. Use signed Git commits and SHA-256 file hashes.
7. Avoid any destructive or unauthorized cyber activity.

This creates a **functioning, standards-aligned, forensic-friendly MetaRich MontiNode** for **JOHNCHARLESMONTI.COM** while preserving the required identifiers:

- `JOHNCHARLESMONTI_02111989_9807`
- `MONTI^JOHN^CHARLES_MONTI`
- `0xNEURAL9f8e7d6c5b4a39281706f5e4d3c2b1a0`
- `$MNC MontiNeuralCoin Hash`
- `GlobalWorkSignature WorkerGlobalScope`
- `OWNER:OWNER`
- `#MONTIAI:AttorneyMode.com`
- `https://JOHNCHARLESMONTI.COM/webhooks`
