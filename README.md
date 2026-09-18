# Amber — Homebrew tap

Installs [Amber](https://amber.arjco.de) — the organised home for everything you
reuse — on macOS.

```sh
brew install --cask chinmay-92/tap/amber
```

That is the whole tap. It holds one cask and nothing else.

## What you get

The signed, notarised disk image from [amber.arjco.de](https://amber.arjco.de) —
the same file the website serves, verified against its published checksum. macOS
checks Apple's notarisation ticket before it opens.

Requires macOS 13 or later. Universal: Apple silicon and Intel.

## Amber Pro

**Amber Pro cannot be bought in this build.** The App Store handles the payment,
and StoreKit only sells to an app the App Store installed, so a directly
downloaded Amber resolves no products at all. Everything else is identical.

If you want Pro, install from the
[Mac App Store](https://apps.apple.com/gb/app/amber-snippets-images-docs/id6805224770?mt=12)
instead. This tap is for people who would rather not go through the store, and
for Macs that cannot reach it.

## Updating

```sh
brew update && brew upgrade --cask amber
```

The cask carries a `livecheck` pointing at the site's release manifest, so
`brew livecheck amber` reports a new version as soon as one is published.

## Why a tap and not homebrew-cask

Homebrew's own cask repository accepts submissions case by case, weighing
"substantial, independently verifiable public interest". Amber is newly
released, so a tap is the honest route for now. Nothing about the cask changes
when that moves — the file here is generated from the release manifest by
`Scripts/make-cask.py` in the app's repository, so its version, URL and checksum
cannot disagree with what is actually being served.
