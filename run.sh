#!/bin/sh

node -e "console.log('Running Node.js ' + process.version)"

mkdir -p $HOME/package
echo "cloning from $REPO"
git clone $REPO $HOME/package
cd $HOME/package

if [ -x package.json ]; then 
  echo "running npm ci as package.json is present"
  npm ci
fi

echo "listing files after build"
ls -l

echo "copying into output"
cp -R $HOME/package/* /output/.