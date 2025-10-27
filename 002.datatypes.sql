/*Data types in SQL specify what kind of data a column can store, such as integers, text, or dates. There are several main categories of data types used across SQL databases:

Numeric Data Types:

1.INT / INTEGER: Whole numbers, e.g., 1, 100.
2.SMALLINT, BIGINT, TINYINT: For smaller or larger whole numbers.
3.MEDIUMINT: Intermediate range whole numbers.
4.BIGINT: Very large whole numbers.
5.DECIMAL(p,s), NUMERIC(p,s): Fixed-point numbers with precision and scale.
6.FLOAT, DOUBLE, REAL: Floating-point numbers (decimals/exponentials), approximate values.
7.BIT: Boolean values (0 or 1)*/
CREATE DATABASE datatypes;
USE datatypes;

CREATE TABLE NumericTypes (
    id INT PRIMARY KEY,
    small_number SMALLINT,
    medium_number MEDIUMINT,
    big_number BIGINT,
    decimal_number DECIMAL(10, 2),
    float_number FLOAT,
    double_number DOUBLE,
    bit_value BIT
);

DESCRIBE NumericTypes;


/*String (Character) Data Types
1.CHAR(n): Fixed-length strings with padding for unused spaces.
2.VARCHAR(n): Variable-length strings up to n characters.
3.TEXT: Large amount of text data.
4.NCHAR, NVARCHAR, NTEXT: Unicode (for international text).*/

CREATE Table stringTypes (
    id INT PRIMARY KEY,
    fixed_string CHAR(10),
    variable_string VARCHAR(50),
    large_text TEXT,
    unicode_string NVARCHAR(100)
);
DESCRIBE stringTypes;

/*Date and Time Data Types
1.DATE: Stores calendar date (YYYY-MM-DD).
2.TIME: Stores time only (hh:mm:ss).
3.DATETIME / TIMESTAMP: Stores date and time information together.
4.YEAR: Stores a year value.​*/
CREATE TABLE DateTimeTypes (
    id INT PRIMARY KEY,
    event_date DATE,
    event_time TIME,
    event_datetime DATETIME,
    event_year YEAR
);
DESCRIBE DateTimeTypes;

/*Binary Data Types
1.BINARY, VARBINARY: Store binary byte strings.
2.BLOB: Binary Large Objects for large binary files like images.​
*/
CREATE TABLE BinaryTypes (
    id INT PRIMARY KEY,
    binary_data BINARY(16),
    varbinary_data VARBINARY(50),
    blob_data BLOB
);
DESCRIBE BinaryTypes;

/*Special and Other Data Types
1.BOOLEAN: TRUE/FALSE logic (may be emulated in some SQL DBs).
2.ENUM: Set of allowed values (e.g., 'Male', 'Female', 'Other').
3.SET: A set of zero or more values from a list.
4.JSON, XML: Store JSON or XML data structures.
5.UUID: Universally unique identifiers.*/
CREATE TABLE SpecialTypes (
    id INT PRIMARY KEY,
    is_active BOOLEAN,
    status ENUM('Pending', 'Active', 'Inactive'),
    tags SET('Tag1', 'Tag2', 'Tag3'),
    json_data JSON,
    uuid_value CHAR(36)
);
DESCRIBE SpecialTypes;



