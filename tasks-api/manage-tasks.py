import uuid
import datetime
import json
import boto3
import uuid
from datetime import datetime

dynamodb = boto3.resource('dynamodb')
shared_tasks = dynamodb.Table('devAssignableTaskList')

def add(event, context):
    now = datetime.now().isoformat()
    shared_tasks.put_item(
        Item={
            'ListOwner': 'KenRimple',
            'ListDate': 'right about now',
            'tasks': [
                {
                    'id': str(uuid.uuid4()),
                    'description': 'But is it user friendly?',
                    'due_date': 'right about now'
                }
            ]
        })
    return {
        "statusCode": 200,
        "body": "OK"
    }