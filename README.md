# AEP-TIS - Professional Aptitude Project (PAP) - DMDI Customer Area (2023)

## Context

This repository contains the project materials developed for the **Professional Aptitude Project (PAP)**, the final assignment for the **Technician in Computer Science - Systems** (Técnico de Informática-Sistemas) course at Agrupamento de Escolas de Pombal (AEP), concluded in 2023. The project was developed in partnership with the company **DMDI EYEWEAR SOLUTIONS**.

## Project Goal

The primary objective was to create a functional **B2B Customer Area** web application for DMDI's clients (opticians). The platform aims to provide clients with a dedicated digital space to access services such as product purchasing, account data consultation, order management, and user administration in an intuitive and interactive way.

## Key Aspects Covered

* **Architecture:** The application is divided into **BackOffice** (for internal user management by DMDI Admin/BackOffice staff) and **FrontOffice** (for client access).
* **User Roles & Permissions:** Implementation of different user types:
    * `Admin` & `BackOffice`: Manage client users via a restricted BackOffice interface.
    * `Ótica/Gerente` (Manager Optician): Full FrontOffice access, including creating and managing associated `Ótica/Cliente` users.
    * `Ótica/Cliente` (Client Optician): Restricted FrontOffice access (cannot manage users or view certain account data).
* **Core Functionalities (FrontOffice):**
    * **Authentication:** Secure login and password recovery process.
    * **Product Catalog ("Shop"):** Browsing products by brand, viewing details (image, code, price - PVO), and adding items to the cart using Web Services data (`GetProductList`).
    * **Shopping Cart & Ordering:** Managing the cart, adding observations, finalizing orders ("Proceed to Checkout"), which integrates directly with DMDI's ERP (ArtSoft) via the `InsertOrder` Web Service.
    * **Order History ("Orders"):** Clients can view their past orders and download associated PDF documents generated upon order placement.
    * **Account Management ("My Account"):** Clients (`Gerente` type) can view their company data (provided by DMDI via `GetClientWebList` Web Service) and manage associated client users.
* **Backend & Integration:**
    * **PHP:** Used for server-side logic, user authentication, session management, database interactions, and communication with Web Services.
    * **MySQL:** Database used for storing user credentials and order-related PDF information.
    * **Web Services:** Consumed SOAP Web Services provided by DMDI for accessing real-time client and product data, and for inserting orders into the ERP. Required VPN (FortiClient) connection.
    * **PDF Generation:** Dynamically generated PDF documents for orders, sent via email and available for download.
* **Frontend:**
    * **HTML5 & CSS3:** Structure and styling of the application, based on a modified Colorlib template.
    * **JavaScript:** Used for client-side interactions, form validation, cart management, and dynamic elements.

## Tools and Technologies Used

* **Languages:** PHP, HTML5, CSS3, JavaScript, SQL, XML, JSON
* **Database:** MySQL (managed via Xampp/phpMyAdmin)
* **Web Server:** Apache (via Xampp)
* **Editor:** Notepad++
* **Connectivity:** FortiClient VPN
* **Template Base:** Colorlib

## Repository Contents

| File / Folder                     | Description                                                                                                                              |
| :-------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------- |
| **`/Source/`** | **Contains all source code** for the BackOffice and FrontOffice (PHP, HTML, CSS, JS files), database scripts (if available), and related assets. |
| `Relatorio_Diogo_final.pdf`       | The final project report (PAP report) detailing the project development, functionalities, and technical choices.                             |

## Author

* Diogo Silva
