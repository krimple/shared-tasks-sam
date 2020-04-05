#!/bin/sh

scriptdir="${0%/*}"
sam deploy --parameter-overrides SharedTasksTableArn=`echo $(${scriptdir}/stack-id cognito-stack-dev SharedTasksTableArn)`,TaskManagerRoleName=`echo $(${scriptdir}/stack-id cognito-stack-dev IamUserRole)`
