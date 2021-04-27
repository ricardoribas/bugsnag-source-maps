#!/bin/bash

# Download decision files
curl https://raw.githubusercontent.com/bugsnag/license-audit/master/config/decision_files/global.yml -o config/decisions.yml
curl https://raw.githubusercontent.com/bugsnag/license-audit/master/config/decision_files/common-js.yml >> config/decisions.yml

gem install license_finder
npm install
license_finder --decisions-file=config/decisions.yml --enabled-package-managers=npm
