# Ansible Molecule Tests

[![Latest Release](https://img.shields.io/github/v/release/pako-23/action-molecule?sort=semver)](https://github.com/pako-23/action-molecule/releases/latest)
[![Lint Codebase](https://github.com/pako-23/action-molecule/actions/workflows/linter.yaml/badge.svg)](https://github.com/pako-23/action-molecule/actions/workflows/linter.yaml)
[![License](https://img.shields.io/github/license/pako-23/action-molecule)](LICENSE)

A GitHub Action that runs Molecule tests on Ansible collections,
playbooks, and roles.

## Usage

The following is an example of how to use this action.

```yaml
name: Run Molecule Tests

on:
  push:
    branches: [main]

permissions:
  contents: read

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v7
      - uses: pako-23/action-molecule@v0.0.1
```

## License

[MIT](LICENSE)
