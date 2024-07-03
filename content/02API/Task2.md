---
title: "Task 2 - Basic interaction with API"
menuTitle: "Task 2 - Basic interaction with API"
chapter: false
weight: 2
---
In this Lab you will explore different types of APIs. You will use different tools like `curl`, Postman or Burp Suite to interact with the APIs.
This will give you a better understanding of how APIs work and how they can be used in different scenarios.

# Prepare the Environment
Make sure that you are still logged in to your Kali Linux Desktop environment and the Flask application is running.

# Explore the API
## Interact with REST API using `curl`
`curl` is **the** command line tool to transfer data from or to a server. It is available on most of the operating systems and can be used to interact with APIs.
1. Open a new terminal window and issue the below command:
```bash
curl -X GET 'http://localhost:8000/api/v1/systeminfo'
```
2. Review the output and try to understand the structure of the response.
3. Use the `cmd` parameter to pass a command to the API and review the output.
```bash
curl -X GET 'http://localhost:8000/api/v1/systeminfo?cmd=whoami'
```
4. Review the output and try to understand the structure of the response and what is different from the previous output.
3. Test the endpoint with different HTTP methods like `POST`, `PUT`, `DELETE` and review the output.

## Interact with REST API using Postman