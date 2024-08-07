---
title: "Module 1: HTTP Fundamentals"
chapter: false
menuTitle: "Module 1: HTTP Fundamentals"
weight: 10
---

![http env](http-env.png)

In this Module, we will explore the fundamentals of the HTTP protocol by observing network traffic sent to and from a web application using Wireshark.   All of these applications will reside on the **Kali** linux device.
- The Sample Web app is deployed on our Kali Linux instance using a freeware tool Flask.  We don't need to understand the details of developing a Flask web app
- We will use Netcat cli tool to interact with the web app, as well as explore some browser based developer tools to visualize what's going on behind the scenes.
- Finally we will execute a simple web site defacement to demonstrate how attacks can impact a web site



### ***Logging into your student environment***

## Prereqs
  - Internet Access
  - Web Browser
    - Any modern browser will work.  Your student environment includes a client and server with all required software.



### Start Kali RDP

For this lab, we will only need to interact with the Kali linux device.  We will use guacamole to create an RDP session in your browser.

- In your browser window, type in the url below, substituting your Kali server IP.

  {{% notice warning %}}
  Kali Linux takes about 20 minutes to fully deploy, so you may get a connection refused error.  Please be patient and the login prompt will eventually appear.
  {{% /notice %}}

  ```
  https://<kali-IP>:8443
  ```
- Accept all warnings and proceed to the site.
- You will be prompted to login to Apache Guacamole.  
  - Enter ```guacadmin``` for Username and enter ```S3cur3P4ssw0rd123!```
  - Click **Login**

![Guac Login](guac_log.png)

- The Guacamole home page will have a list of connections.  Click on the connection labled **Lab Desktop**

![Kali con](kali_con.png)

- Note the icons at the top left of the home screen.  We will be using these during the lab.

![Kali Home](kali_home.png)

### Paste text into Kali Desktop

There are portions of this lab that will require large amounts of text to be entered on the Kali desktop. To accomplish this:
- You will need to open (and close) the Guacamole menu by typing **ctrl+alt+shift+** for Windows or **ctrl+command+shift** for MAC. 
- Paste your text into the window, and select **Text input** as the Input method.

![CP Paste](cp_paste.png)

- Right click on the desktop where you want to past and click "paste" or "paste from clipboard" depending on which option is available.

### Open Wireshark

- Click on the **Applications** icon at the top right of the Kali home screen.  Search for "wireshark" and open the application.
![Find shark](find_shark.png)
  - You will be asked to Authenticate.  
  ![Shark Auth](shark_auth.png)
  - You will input the labuser password ```S3cur3P4ssw0rd123!``` and click **Authenticate**
  





