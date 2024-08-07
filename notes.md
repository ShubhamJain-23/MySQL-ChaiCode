# Notes of MySQL

This is the notes of MySQL coursse taught by [Ms. Priya Bhatia](https://www.techforallwithpriya.com/) on [ChaiCode.com](https://chaicode.com/) and initiative by [Mr. Hitesh Chaudhary](https://hitesh.ai/).

## Table of Contents

- [Types of DataBases](#types-of-databases)
- [CRUD Operations](#crud-operations)
- [DataTypes in MySQL](#datatypes-in-mysql)
- [Constraints](#constraints)

## Types of Databases

1. Relational DataBases
    - Data is stored in the form of rows and columns
    - Structured Data
    - Eg: MySQL, SQL Server, PostgreSQL , etc.

2. NoSQL DataBases
    - JSON files {key:value}
    - Document
    - Graph
    - Eg: MongoDB, Cassandra, Apache HBase

## CRUD Operations

1. Create
    - create database $name
    - create table $name

2. Update
    - update table $name

3. Read
    - select * from $table_name

4. Delete
    - delete from $table_name


## DataTypes in MySQL

- INT: Store the numeric data
- VARCHAR($size): Store the texual string data of the specified size 

## Constraints
- Primary Key: Assign a unique value to each and every record in the table, not null by default
- Not NULL: This column can not be left empty, it is mandatory


