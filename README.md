# RPMbuild action

A GitHub action to build an RPM.

## Inputs

### `distribution`

The distribution to run on. Currently supported:

- [`centos-7`](https://github.com/robertdebock/docker-github-action-rpmbuild/tree/centos-7)
- [`centos-8`](https://github.com/robertdebock/docker-github-action-rpmbuild/tree/master) (default)
- [`fedora-31`](https://github.com/robertdebock/docker-github-action-rpmbuild/tree/fedora-31)

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
        uses: robertdebock/rpmbuild-action@1.1.0
```
