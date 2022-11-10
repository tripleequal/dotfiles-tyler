#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See `zshenv` for the setting of the `N_PREFIX` variable,
# thus making it available below during the first install.
# See `zshrc` where `N_PREFIX/bin` is added to `$path`.

if exists $N_PREFIX/bin/node; then
  echo "Node $($N_PREFIX/bin/node --version) & NPM $($N_PREFIX/bin/npm --version) already installed with n"
else
  echo "Installing Node & NPM with n..."
  n 8
  n lts
  n latest
fi


# Install Global NPM Packages
npm install -g @aws-amplify/cli
npm install -g firebase-tools
npm install -g @angular/cli
npm install -g nx
npm install -g @ionic/cli
npm install -g typescript
npm install -g json-server
npm install -g http-server
npm install -g ember-cli
npm install -g trash-cli

echo "Global NPM Packages Installed:"
npm list --global --depth=0
