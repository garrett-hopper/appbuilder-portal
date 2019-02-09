#!/bin/bash

set -ex

if [[ ! -d node_modules/semantic-ui-react/dist ]]; then
  echo "semantic-ui-react has not been built!"
  echo "PWD: $1"
  
  cd /tmp
  rm -rf semantic-ui-react
  git clone git@github.com:Semantic-Org/Semantic-UI-React.git semantic-ui-react
  cd /tmp/semantic-ui-react
  yarn install
  NODE_ENV=production yarn build:dist
  mv /tmp/semantic-ui-react $1/node_modules/

  echo "building semantic-ui-react has finished"
else
  echo "semantic-ui-react has already been built"
fi

rm -rf "$1/node_modules/semantic-ui-react/index.d.ts"