#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$USERNAME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USERNAME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
