default: install

alias f := format
alias fmt := format

format:
    just --fmt --unstable

install:
    #!/usr/bin/env bash
    set -euxo pipefail
    foot --config=foot.ini --check-config
    mkdir --parents "{{ config_directory() }}/foot"
    ln --force --relative --symbolic foot.ini "{{ config_directory() }}/foot/foot.ini"
