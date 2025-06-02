# Pharmacy-Apex-Oracle
well?
## Project Overview

This project represents a relational database designed for pharmacy management, optimizing order processing, inventory tracking, and customer interactions. By eliminating redundancies and ensuring data integrity, the system provides a flexible and user-friendly structure built on well-defined tables, SQL views, and procedures. This project lays the groundwork for future enhancements, such as process automation and advanced functionalities.

The pharmaceutical industry is constantly evolving, and the adoption of modern technologies is crucial for streamlining operations and improving efficiency. In this context, I have developed a relational database for pharmacy management. Currently, many pharmacies still rely on paper records, leading to cumbersome inventory management and order processing prone to human errors. This project aims to address these issues. The primary goal of this project is to avoid redundancies and connection traps such as fan and chasm while ensuring data integrity and consistency. Additionally, we aim to simplify customer and inventory management by implementing views and procedures that offer a flexible and user-friendly approach. I have created the necessary tables, which form the foundation of the system, ensuring a solid structure and consistency in data storage. However, the project does not stop here and it opens new avenues for future development.

## Entity-Relationship Diagram
Our entity-relationship diagram consists of:
- **5 Entities**: Pharmacy, Medication, Customer, Order, and Loyalty Card
- **5 Relationships**: 2 one-to-many (1:N) relationships, 2 many-to-many (N:N) relationships, and 1 one-to-one (1:1) relationship
  
<img width="1125" alt="Diagrama Entitate-Relatie 2" src="https://github.com/user-attachments/assets/f6788452-2217-4439-9ada-61cf42c2cd23" />

Each entity has at least four attributes:
- **Pharmacy**: Pharmacy ID (unique), Name, Address, Phone Number, Email
- **Medication**: Medication ID (unique), Name, Category, Chemical Formula, Price, Stock, Expiration Date
- **Customer**: Customer ID (unique), Name, Address, Phone Number, Email
- **Loyalty Card**: Card ID (unique), Loyalty Points, Status, Registration Date
- **Order**: Order ID (unique), Total Amount, Payment Method, Processing Date

### Relationships:
1. **1:N Relationship** between Pharmacy and Medication (A pharmacy can have multiple medications).
2. **N:N Relationship** between Pharmacy and Loyalty Card (Multiple pharmacies can create multiple loyalty cards).
3. **N:N Relationship** between Medication and Order (Multiple medications can be included in multiple orders).
4. **1:N Relationship** between Customer and Order (A customer can place multiple orders).
5. **1:1 Relationship** between Customer and Loyalty Card (A loyalty card is assigned to a single customer).

## Database Implementation
The database is implemented using SQL, covering table creation, relationships, views, procedures, sequences, and triggers. Some key features include:

### Tables:
- **Category_Medication**: Defines medication categories.
- **Loyalty_Card**: Stores customer loyalty information.
- **Customer**: Contains customer details.
- **Order**: Stores order information.
- **Order_Details**: Links orders with medications.
- **Pharmacy**: Stores pharmacy information.
- **Medication**: Contains details about available medications.

<img width="813" alt="Structura BD" src="https://github.com/user-attachments/assets/e644d08d-eaf3-4ada-a56c-56189c55a432" />

### Views:
- **Medication_View**: Displays details of a specific medication.
- **Order_Details_View**: Joins multiple tables to provide an overview of orders, customers, pharmacies, and medications.

### Procedures:
- **ShowMedicationsInCategory**: Displays all medications belonging to a given category.
- **AddLoyaltyCard**: Adds a new loyalty card with auto-generated IDs using a sequence and trigger.

## Sample Data
The project includes pre-populated sample data for categories, customers, orders, pharmacies, and medications. This allows for immediate testing and validation of the database functionality.

## Future Development
Potential enhancements include:
- Implementing a web-based user interface for pharmacy staff.
- Integrating inventory alerts for low-stock medications.
- Expanding reporting capabilities for sales and customer insights.
- Introducing AI-driven recommendations for pharmacy stock optimization.
- Enhancing security measures for user authentication and data protection.

## Conclusion
The Pharmacy Apex Oracle project provides a well-structured, efficient, and scalable database system for pharmacy management. By leveraging SQL views, procedures, and constraints, we ensure data integrity, flexibility, and ease of use. This project serves as a foundation for further developments in pharmacy automation and digital transformation.
