---
title: "Task 2 - Use Netcat to interact with Application"
menuTitle: "Netcat"
weight: 5
---

**According to the "manpage":** netcat is  a simple unix utility which reads and writes data across network connections, using TCP or UDP protocol. It is designed to be a reliable "back-end" tool  that  can  be used  directly or easily driven by other programs and scripts.  At the same time, it is a feature-rich network debugging and exploration tool, since it can create almost any  kind of  connection you would need and has several interesting built-in capabilities.  Netcat, or "nc" as the actual program is named, should have been supplied long ago as another one of those cryptic but standard Unix tools.

We will be using cetcat to craft http calls to our flask application.  These will all be made against "localhost", but it could just as easily use a public URL.

## Make your first call

{{% notice info %}} When making the below calls, you will not want to try and paste them in all at once.  Please enter the commands **one line at a time**. {{% /notice %}}

```
nc localhost 8000 -vvv
GET /hello HTTP/1.1
<hit enter again>
```

- You should see some response headers returned as well as the programmed response from the app. We can see the **200 OK** status, meaning that our application is actually working and we called a valid resource.
<details>
<summary><h5><b>Click here for example</b></h5></summary>
  
  ![GET Hello](nc_get_hello.png)

</details>

{{% notice tip %}}
We also get some other useful information about the application, including the Application server software as well as the python version used.  Generally speaking the less information potential attackers have about your application, the better.  If this information is exposed, it is imperitive to ensure that servers are appropriately patched.
{{% /notice  %}}

- Take a look back at the terminal where you originally started the Flask application.  You should see your first debug message.

![Flask Debug](flask_debug.png)

## Method Not Allowed

- In our first call above, we used the **GET** method against http://localhost:8000/hello.  Let's try the same thing against a different URL

```
nc localhost 8000 -vvv
GET /login  HTTP/1.1
<hit enter again>
```
<details>
  <summary><h5><b>Click here for example</b></h5></summary>
   
   ![No GET](flask_noget.png)

</details>

- As you can see, we got the **Method Not Allowed (405)** error. In the example output, you can see that we only allow **POST** and **OTIONS** methods.

## Form Data

The FormData interface provides a way to construct a set of key/value pairs representing form fields and their values. Formdata is useful if the client does not suppor Javascript, or in a situation where it is desireable to send binary data without text encoding.  For This step, we are going to set the "Content-Type" to **x-www-form-urlencoded** and then add key/values for username and password.

```
nc localhost 8000 -vvv
POST /login HTTP/1.1
Content-Type: application/x-www-form-urlencoded
Content-Length: 34

username=student&password=welcome
```

<details>
  <summary><h5><b>Click here for example</b></h5></summary>
   
   ![Flask Login](flask_login.png)

</details>


## JSON

JavaScript Object Notation (JSON) is a text-based format for representing and exchanging data that is both human and machine-readable. It is often used in web applications, but can be used independently from JavaScript and in any programming language. JSON is popular with developers because it is lightweight, easy to parse and generate, and requires less coding.  For This step, we are going to set the "Content-Type" to **json** and then add key/values for username and password in a simple JSON string.  

For mor information about JSON, click on [this link](https://www.w3schools.com/js/js_json_intro.asp).

```
POST /save HTTP/1.1
Content-Type: application/json
Content-Length: 32

{"id": 5150, "name": "student"}

```

<details>
  <summary><h5><b>Click here for example</b></h5></summary>
   
   ![Flask JSON](flask_json.png)

</details>