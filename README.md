# RPMbuild action

A GitHub action to build an RPM.

## Requirements

This action expects the following structure:

```
.
├── README.md
├── SOURCES
│   └── my-1.0.0.tar.gz
└── SPECS
    └── my.spec
```

## Example usage

`.github/workflows/rpmbuild.yml`:

```yaml
---
name: Build RPM

on:
  - push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: checkout
        uses: actions/checkout@v2
      - name: rpmbuild
        uses: robertdebock/rpmbuild-action@1.0.0
```
