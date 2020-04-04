echo aws cloudformation deploy \
   --stack-name sam-stack-dev \
   --region us-east-1 --template-file template.yaml \
   --capabilities CAPABILITY_IAM
