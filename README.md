# lambda-builder-node

Builds a AWS nodejs lambda function package using docker.

Takes one environment variable: REPO which points to the public repository containing the code to be packaged.

Package is placed in the /output folder.

## Install does the following steps

* runs `npm ci` if `package.json` is present in the code repo
* copies all the original files plus any new files from npm ci into the output folder

## How to run

```
docker run --rm -e REPO=<git url> -v <local folder where you want the output>:/output richardjkendall/lambda-builder-node
```

## Terraform

You can see the terraform module that this works with here https://github.com/richardjkendall/tf-modules/tree/master/modules/lambda-function-node
