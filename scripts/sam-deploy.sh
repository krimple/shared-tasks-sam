#!/bin/sh

AWS_REGION=us-east-1
scriptdir="${0%/*}"
SHARED_TASKS_TABLE_ARN=`echo $(${scriptdir}/stack-id cognito-stack-dev SharedTasksTableArn)` 
IAM_USER_ROLE=`echo $(${scriptdir}/stack-id cognito-stack-dev IamUserRole)` 
sam deploy --region $AWS_REGION --parameter-overrides SharedTasksTableArn=$SHARED_TASKS_TABLE_ARN TaskManagerRoleName=$IAM_USER_ROLE
