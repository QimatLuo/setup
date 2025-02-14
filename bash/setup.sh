#!/bin/bash

echo source "$(dirname $PWD/$BASH_SOURCE)/bashrc.sh" >> "$HOME/.bashrc"
