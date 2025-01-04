#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
bash common/brew/setenv.sh

brew install gcc

bash common/brew/cli_tools.sh
bash common/brew/docker.sh
