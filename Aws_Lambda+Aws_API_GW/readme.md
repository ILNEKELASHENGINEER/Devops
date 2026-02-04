# Simple AWS Lambda + API Gateway Hands-on
## Overview

This project demonstrates a serverless architecture using AWS services: API Gateway, Lambda. The Lambda function provides a simple API that returns the current time.

## Architecture

```
Client  → API Gateway  → Lambda  → Function's Output
```
<img width="925" height="925" alt="aws_lambda_ gw drawio" src="https://github.com/user-attachments/assets/1c6ddf30-179d-48eb-a954-a762156a4ba1"/>

1. **Client**: Sends a request to the API.
2. **API Gateway**: Receives the request and forwards it to the Lambda function.
3. **Lambda**: Executes the function that retrieves the current time.

## Features

- Serverless architecture using AWS Lambda.
- Returns the current time in a JSON format.
- Integrated with AWS API Gateway.

## Getting Started

### Prerequisites

- AWS Account
- AWS CLI installed and configured
- Basic knowledge of Python (chosen runtime)

### Setup Instructions

1. **Create the Lambda Function**:
   - Go to the AWS Management Console.
   - Navigate to AWS Lambda and create a new function.
   - Choose your preferred runtime (e.g., Python, Node.js).

2. **Function Code**:
   - We will use the Python runtime
      - Replace the default code with the following snippet:

   ```python
    import json
    from datetime import datetime
    
    def lambda_handler(event, context):
        current_time_utc = datetime.now()
        time_string = current_time_utc.strftime("%Y-%m-%d %H:%M:%S UTC")
        return {
            'statusCode': 200,
            'body': json.dumps(f'Hello!! api is working, current time is {time_string} in UST')
        }

   ```

3. **Create an API Gateway**:
   - Navigate to API Gateway in the AWS Management Console.
   - Create a new REST API.
   - Create a resource and a GET method that triggers your Lambda function.

4. **Test the API**:
   - Deploy the API and note the endpoint URL.
   - Use a browser or a tool like Postman to send a GET request to the endpoint.
   - You should receive a response with the current time.

5. **Monitoring Logs and Metrics**:
   - Go to CloudWatch in the AWS Management Console to view logs and metrics related to your Lambda function.

## Example Request

To get the current time, send a GET request to your API Gateway endpoint:

```
GET https://p2fnjs8ilk.execute-api.us-east-1.amazonaws.com/lambda_4_fun/
```

### Example Response

```json
{
  "statusCode": 200,
  "body": "\"Hello!! api is working, current time is 2026-02-04 05:10:23 UTC in UST\""
}
```
### Screenshots
1. Lambda function
   
   <img width="1531" height="630" alt="Screenshot 2026-02-04 103540" src="https://github.com/user-attachments/assets/c0e0ffee-0d57-4764-a842-3bc454e6ba62"/>

2. Api Gateway

   <img width="1588" height="702" alt="Screenshot 2026-02-04 103636" src="https://github.com/user-attachments/assets/8ec90de8-139e-48ae-93cf-f09f991464c9"/>

   <img width="1587" height="340" alt="Screenshot 2026-02-04 103410" src="https://github.com/user-attachments/assets/aa14bd2c-bed9-4f67-b84b-8a338894ba37"/>

3. Api Endpoint Output
   
   <img width="771" height="231" alt="image" src="https://github.com/user-attachments/assets/8186003d-e239-4d79-88ca-8e0c48a7ee0f"/>

## Conclusion

Congratulations! We've successfully created a simple serverless application using AWS Lambda and API Gateway.
