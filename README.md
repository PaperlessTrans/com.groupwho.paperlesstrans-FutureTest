com.groupwho.paperlesstrans
===============
CiviCRM Extension for Paperless Transaction Corporation Payment Processor - Date: Dec 28, 2017. 

This README.md contains information specific to system administrators/developers. 

Requirements
------------

1. CiviCRM 4.6.x or 4.7.x. We strongly recommend that you keep up with the most recent version of each branch.

2. Your PHP needs to include the SOAP extension (php.net/manual/en/soap.setup.php), recommended that you use at least PHP 5.6 but 5.3 and above should work if it supports TLS1.1/1.2 and SHA-256.

3. To use this extension in production, You must have a Paperless Transaction's Payments Account - and have configured it to accept payment though WebServices. You can use the shared test account credentials for initial setup and testing. To know more about the Paperless Transaction Corporation's BackOffice API, please see the Documentation Resource: http://apidocs.paperlesstrans.com/api-overview.php

4. To handle ACH/EFT Contributions (verification of them) and to handle Recurring Contributions (of any type) you must configure cron for your CiviCRM install. Information about how to do this can be found in: http://wiki.civicrm.org/confluence/display/CRMDOC/Managing+Scheduled+Jobs
Eg: Using crontab:
/5 * * * * wget -O - -q -t 1 "../civicrm/bin/cron.php?name="your-username"&pass="your-password"&key="your-site-key"

Installation
------------

This extension follows the standard installation method - if you've got a supported CiviCRM version and you've set up your extensions directory, it'll appear in the Manage Extensions list as 'Paperless Transaction Payment Processor (com.groupwho.paperlesstrans)'. Hit Install.

If you need help with installing extensions, try: https://wiki.civicrm.org/confluence/display/CRMDOC/Extensions

If you want to try out a particular version directly from github, you probably already know how to do that.

Once the extension is installed, you need to add the payment processor(s) and input your Paperless Transaction Corporation's credentials:

1. Administer -> System Settings -> Payment Processors -> + Add Payment Processor

2. Select Paperless Transactions Credit Card or Paperless Transactions ACH/ETF, they are provided by this extension (the instructions differ only slightly for each one). You can create multiple payment processor entries using the same credentials for the different types.

3. The "Name" of the payment processor is what your site visitors will see when they select a payment method, so typically use "Credit Card" here, or "Credit Card C$" (or US$) if there's any doubt about the currency. 

4. The test account uses Username = 18304896-329f-4b2e-a6e4-b39157dafeda and Password = 390489817. This is a shared test account, so don't put in any private information.

5. If you'd like to test using live workflows, you can just temporarily use the test account credentials in your live processor fields.

6. Create a Contribution Page (or go to an existing one) -> Under Configure -> Contribution Amounts -> select your newly installed/configured Payment Processor(s), and Save.

7. (Important Verification)
Find the Main.extra.tpl file in the extension at 
'com.groupwho.paperlesstrans/templates/CRM/Contribute/Form/Contribution' and search for "residence". Change(replace) the string value associated with the "residence" keyword with respect to your CMS location. Eg: 'sites/default/files/civicrm/ext/com.groupwho.paperlesstrans/templates/CRM/Contribute/Form/Contribution/'

Extension Testing Notes
-----------------------

1. Manage Contribution Pages -> Links -> Live Page.

  * Paperless Transactions Payments Credit Card: use test VISA: 4012888888881881 security code = 123 and any future Expiration date - to process any $amount.

  * Paperless Transactions Payments ACH/EFT: use 111111118 for the Bank Identification Number and 12121214 for Bank Account Number along with any bank name and account holder.

2. After completing a TEST payment

  * If you have selected a future date, check Administer -> System Settings -> Scheduled Jobs to find your transaction there waiting to execute at the future start date you mentioned.
  * Otherwise, check the Contributions -> Dashboard. 

3. If things don't look right, you can turn on Drupal and CiviCRM logging - try another TEST transaction - and then see some detailed logging of the SOAP exchanges for more hints about where it might have gone wrong.

4. To test recurring contributions - try creating a recurring contribution for every day and then go back the next day and manually trigger Scheduled Job.

Once you're happy all is well - then all you need to do is update the Payment Processor data - with your own Paperless Transaction's Login credentials.

Also remember to turn off debugging/logging on any production environment!

Issues
------

Some issues may be related to core CiviCRM issues, and may not have an immediate solution, but we'll endeavour to help you understand, work-around, and/or fix whatever concerns you raise on the issue queue.

Below is a list of some of the most common issues:

* The Credit Card and ACH/EFT haven't been implemented together to run future date transactions yet.
* Since the future date payment feature is new, it is under process of development of a live environment.

Please post an issue to the github repository if you have any questions.

