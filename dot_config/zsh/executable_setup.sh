#!/bin/bash

script_path=$(realpath $0)
zsh_path=$(dirname $script_path)

ln -sv ${zsh_path}/zshrc ~/.zshrc
