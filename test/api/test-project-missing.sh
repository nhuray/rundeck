#!/bin/bash

#test result of /project/ metadata result with missing project param

DIR=$(cd `dirname $0` && pwd)
source $DIR/include.sh

# now submit req
proj=""

runurl="${APIURL}/project/${proj}"

echo "TEST: get mising project ${proj}..."

sh $DIR/api-expect-error.sh "${runurl}" "${params}" "parameter \"project\" is required" || exit 2
echo "OK"

rm $DIR/curl.out

