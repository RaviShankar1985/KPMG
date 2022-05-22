# KPMG

Challange# 1 - Implementation of 3 tier architecture with terraform using AzureRM. The infrastructure achedived will have below properties:


One virtual network tied in three subnets.
Each subnet will have one virtual machine.
First virtual machine -> allow inbound traffic from internet only.
Second virtual machine -> entertain traffic from first virtual machine only and can reply the same virtual machine again.
App can connect to database and database can connect to app but database cannot connect to web.

Challange# 2-

Created a powershell which will use Azure API  to get JSON object as output which would contain all historic pipeline details. Using this output we can compute
pipeline results, wait time, run time etc. This is a metadata which provides us with lot of information with pipeline executions.

Challange# 3-

Created a powershell script to iterate through nested json object to provide the output using the passed key.

#Sample Object and key as per the problem statement 
 #object = {“a”:{“b”:{“c”:”d”}}}
 #key = a/b/c

