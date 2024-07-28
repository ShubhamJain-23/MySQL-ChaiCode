# Notes of MySQL

This is the notes of MySQL coursse taught by [Ms. Priya Bhatia](https://www.techforallwithpriya.com/) on [ChaiCode.com](https://chaicode.com/) and initiative by [Mr. Hitesh Chaudhary](https://hitesh.ai/).

## Contents of the file

- [Types of DataBases](#Types-of-DataBases)
- [CRUD Operations](#CRUD-Operations)
- [DataTypes in MySQL](#DataTypes)
- [Constraints](#constraints)

## <a name="Types-of-DataBases"></a>Types of Databses

1. Relational DataBases
    - Data is stored in the form of rows and columns
    - Structured Data
    - Eg: MySQL, SQL Server, PostgreSQL , etc.

2. NoSQL DataBases
    - JSON files {key:value}
    - Document
    - Graph
    - Eg: MongoDB, Cassandra, Apache HBase

## <a name="CRUD-Operations"></a> CRUD Operations

1. Create
    - create database $name
    - create table $name

2. Update
    - update table $name

3. Read
    - select * from $table_name

4. Delete
    - delete from $table_name


## <a name="DataTypes"></a> DataTypes in MySQL

- INT: Store the numeric data
- VARCHAR($size): Store the texual string data of the specified size 

## <a name="Constraints"></a> Constraints
- Primary Key: Assign a unique value to each and every record in the table, not null by default
- Not NULL: This column can not be left empty, it is mandatory


