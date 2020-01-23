# RPMbuild action

A GitHub action to build an RPM with just a .spec file and a few parameters.

## Requirements

This action expects the following structure:

```
.
├── SPECS/my.spec
└── SOURCES/my.tar.gz
```

## Inputs

### `specfile`

The RPM spec file.

## Example usage

`.github/workflows/rpmbuild.yml`:

```yaml
---
on:
  - push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: checkout
      - name: rpmbuild
        uses: robertdebock/rpmbuild-action@1.0.0
```
