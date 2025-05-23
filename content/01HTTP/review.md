---
title: "HTTP review"
linktitle: "HTTP review"
weight: 50
---

### Review 

In this module, we used some very common troubleshooting tools to interact with a very simple monolithic web application written using Flask.  

- Netcat was used to better understand how to manually craft http requests
- Wireshark was used to observe the layer3 and layer4 traffic patterns between the client and server
- Browser dev tools were used to help students understand how to dig more deeply into the client/server interactions at layer7
- Finally, we perpetrated a simple web attack, to deface our simple website

Hopefully this engendered a desire on the part of the student to use these tools and techniques to further explore and learn how to secure this type of application.

### HTTP Quiz

1. What is a cookie?

    {{% expand title="Click here for Answer" %}}
A small piece of data sent from a server to a user's web browser
    {{% /expand %}}

2. What can you learn from developer tools in the browser?

    {{% expand title="Click here for Answer" %}} - request and response headers
 - scripts passed to the browser from the server
 - cookies and other content
 - response codes
    {{% /expand %}}

3. Web attacks are difficult to perpetrate,m and you need to be an inveterate hacker to attempt it (True or False)

    {{% expand title="Click here for Answer" %}}
**FALSE** - The attack in this lab is very simple, but very effective.  This should highlight the need to protect web applications with a purpose built Web Application Firewall (WAF)
    {{% /expand %}}