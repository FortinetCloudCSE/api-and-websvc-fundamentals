---
title: "Task 4 - Advanced API handling"
menuTitle: "Task 4 - Advanced API handling"
chapter: false
weight: 4
---
In this lab you will explore more advanced API handling techniques. This will based upon the previous labs and will require you to use the tools you have learned about.
We will cover topics like OAuth and JWT tokens, API security, and API testing.

## Documentation of APIs (aka Swagger UI)
1. Open the Firefox Browser and navigate to the following URL: `https://petstore.swagger.io/`
![img_22.png](img_22.png)
2. Familiarize yourself with the Swagger UI layout. The interface is divided into several sections: the header, the API information, and the list of endpoints.
3. At the top, you will see general information about the API including the title, version, description, and terms of service. Note the available schemes (HTTP or HTTPS) and the host (petstore.swagger.io).
![img_23.png](img_23.png)
4. Scroll down to see a list of available endpoints categorized by functionality (e.g., `pet`, `store`, `user`).
![img_24.png](img_24.png)
5. Click on an endpoint to see more details about it. For example, click on the `GET /pet/findByStatus` endpoint.
![img_25.png](img_25.png)
6. You will see a description of the endpoint, the parameters it accepts, and the responses it returns. You can also try out the endpoint by clicking on the `Try it out` button.
![img_26.png](img_26.png)
7. After executing the call, review the response directly in the Swagger UI. The response section will show the URL, the request parameters, the server response including the status code, response body, and headers.
![img_27.png](img_27.png)
8. Spend some time exploring the different endpoints and trying them out. Try different HTTP methods (GET, POST, PUT, DELETE) and explore how the API handles each request.


## Interacting with protected APIs (API Token)