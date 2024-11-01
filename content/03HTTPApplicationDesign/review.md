---
title: "Modern Application review"
linktitle: "Modern Application review"
weight: 50
---

### Review 

In this module, we built a 3 tiered application, including a Front End, Back End and Database.  We learned how these three tiers interact with one another, by discovering and fixing errors on the Front End.  We also made modifications to the Database and observed how these changes affected the end user experience.


### Modern Application Quiz

1. The client browser only interacts with the Front End of any application (True or False)

    {{% expand title="Click here for Answer" %}}
<b>FALSE</b> As we saw in the labs, when the user navigates to Front End website, they can be served with content rendered directly from the back end. 
    {{% /expand %}}

2. Does modifying the Database have any impact on the Front End or Back End applications?

    {{% expand title="Click here for Answer" %}}
<b>No</b> In Task 3, we made a change to the Database.  While the content served to the end user (client) was modified, there was no change to the Front End or Back End applications.  This is a key feature of the multi-tiered architecture.  We could change the look and feel of the Front End, but this would have no impact on the Back End.  Further, we could change the logic on the Back End, without modifying the Front End application. 
    {{% /expand %}}

3. Tiered applications are less secure than monolithic applications (True or False)

    {{% expand title="Click here for Answer" %}}
<b>FALSE</b> Multi-tiered applications do expand the attack surface, meaning that we have to give more consideration for how to secure each tier.  That said, while a monolithic application only has one point of entry, once breached, malware has access to all the application's code and data.   
    {{% /expand %}}