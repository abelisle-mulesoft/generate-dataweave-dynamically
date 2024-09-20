# Subfolder `resources`
## Overview

This subfolder includes miscellaneous resources for setting up the database (which acts as the system of record in this demo) and interacting with the two Mule applications, the Dataweave Generator API and the Sales Orders System API. More specifically, the resources include:

- `Create-DB-Table-dataweave_script.sql`: a SQL script for creating the PostgreSQL database table used for storing the generated dataweave scripts.
- `Create-DB-Table-sales_order_header.sql`: a SQL script for creating the PostgreSQL database table used for storing the Sales Order Headers.
- `SalesOrderHeader - Sample Data.sql`: Sales Order Header sample data ready for insertion into the associated PostgreSQL database table. Only a handful is inserted at a time in a typical demo.
- `SalesOrderHeader-to-JSON-Config.json`: Sample configuration file for generating a DataWeave script that transforms the database table row to JSON.
- `SalesOrderHeader-to-XML-Config.json`: Sample configuration file for generating a DataWeave script that transforms the database table row to XML.

