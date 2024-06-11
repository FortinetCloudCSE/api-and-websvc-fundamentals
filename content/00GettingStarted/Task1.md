---
title: "Task 1 - Setup Azure CloudShell"
weight: 1
---

#### **Setup your AzureCloud Shell**

* Login to Azure Cloud Portal [https://portal.azure.com/](https://portal.azure.com/) with the provided login/password

    ![cloudshell1](../../images/cloudshell-01.jpg)
    ![cloudshell2](../../images/cloudshell-02.jpg)

* Click the link "Skip for now (14 days until this is required)" do not click the "Next" button

    ![cloudshell3](../../images/cloudshell-03.jpg)

* Click the "Next" button

    ![cloudshell4](../../images/cloudshell-04.jpg)

* Click on Cloud Shell icon on the Top Right side of the portal

    ![cloudshell5](../../images/cloudshell-05.jpg)

* Select **Bash**

    ![cloudshell6](../../images/cloudshell-06.jpg)

* Click on **Show advanced settings**

    ![cloudshell7](../../images/cloudshell-07.jpg)
* Select
  * Use existing Resource Group  - it ***should*** auto populate with USERXX-http101-workshop (USERXX is your Username)
  * Use existing Storage account - it ***should*** auto populate with USERXX########## (########## is a random string) 

  {{< notice warning >}} Please make sure to switch the **cloud shell region** to **East US** for the existing storage account to reflect
  {{< /notice >}}  

  * Use existing File Share  - type **cloudshellshare** 

* Click "Attach Storage"

    ![cloudshell8](../../images/cloudshell-08.png)

* You should now have access to Azure Cloud Shell console

    ![cloudshell9](../../images/cloudshell-09.jpg)