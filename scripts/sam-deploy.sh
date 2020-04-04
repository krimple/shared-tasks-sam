#!/bin/sh

scriptdir="${0%/*}"
sam deploy --parameter-overrides TaskManagerRoleName=`echo $(${scriptdir}/stack-id cognito-stack-dev IamUserRole)`
