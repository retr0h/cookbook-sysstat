#!/usr/bin/env bash

# A script to run tests locally before committing.

set -e

COOKBOOK=$(awk '/^name/ {print $NF}' metadata.rb |tr -d \"\')
if [ -z $COOKBOOK ]; then
    echo "Cookbook name not defined in metadata.rb"
    exit 1
fi

BUNDLE_PATH=${BUNDLE_PATH:-.bundle}
COOKBOOK_PATH=${COOKBOOK_PATH:-.cookbooks}

bundle install --path=${BUNDLE_PATH}
bundle exec berks install --path=${COOKBOOK_PATH}
bundle exec foodcritic -f any -t ~FC003 -t ~FC023 ${COOKBOOK_PATH}/${COOKBOOK}
bundle exec rspec ${COOKBOOK_PATH}/${COOKBOOK}
