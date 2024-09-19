# Generate a DataWeave Script Dynamically
This repository contains two Mule applications created to demonstrate how to generate a DataWeave script dynamically. First, the actual design and implementation were influenced by a use case a customer provided. That said, the focus of the demo was to showcase the art of the possible while keeping the implementation as simple as possible. 

![Overview of the Mule Applications](documentation/assets/images/Mule-Apps-Overview.png)

As illustrated in the diagram above, the two Mule applications are:

1. The **DataWeave Generator** application, as its name implies, demonstrates how to generate a DataWeave script dynamically based on a basic JSON configuration file.
2. The customer's use case influenced the **Sales Order System API** (and other related assets), which showcases how to use a Dynamic Evaluate component within a Mule flow in conjunction with the generated DataWeave script.



# Repository Structure and Content

- The folder **anypoint-studio-projects** includes the source code of the two Mule applications.
- The folder **documentation**, as the name implies, basic documentation on the implementation and on how to run the Mule applications.
- The folder **postman-collection** contains a basic Postman collection for interacting with the two Mule applications.
- The folder **resources** includes miscellaneous resources for setting up the database and testing the two Mule applications.
