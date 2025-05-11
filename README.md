# DBMS
Ecom 


# 📄 E-Commerce Database Relationships Documentation

## Overview
This document describes the relationships between entities in the E-Commerce database schema.

---

## Entity Relationships

### 1. Customers and Orders
- A **Customer** can place **multiple Orders** over time.
- Each **Order** is placed by **one Customer**.
- **Relationship Type**: One-to-Many (Customer → Orders)

### 2. Orders and Order Items
- An **Order** can include **multiple Products** (represented as Order Items).
- Each **Order Item** belongs to **one Order**.
- **Relationship Type**: One-to-Many (Order → Order Items)

### 3. Order Items and Products
- Each **Order Item** references **one Product**.
- A **Product** can appear in **many Order Items** across different Orders.
- **Relationship Type**: Many-to-One (Order Items → Products)

### 4. Products and Categories
- Each **Product** belongs to **one Category**.
- A **Category** can include **multiple Products**.
- **Relationship Type**: One-to-Many (Category → Products)

### 5. Orders and Payments
- An **Order** can have **one or more Payments** (though often just one in simpler models).
- Each **Payment** applies to **one Order**.
- **Relationship Type**: One-to-Many (Order → Payments)

### 6. Customers and Notifications
- A **Customer** can receive **multiple Notifications**.
- Each **Notification** belongs to **one Customer**.
- **Relationship Type**: One-to-Many (Customer → Notifications)

---

## Summary of Relationship Types

| Relationship                 | Type        |
|------------------------------|-------------|
| Customers to Orders           | One-to-Many |
| Orders to Order Items         | One-to-Many |
| Order Items to Products       | Many-to-One |
| Products to Categories        | Many-to-One |
| Orders to Payments            | One-to-Many |
| Customers to Notifications    | One-to-Many |

---

