# Datacreeks SQL-Bootcamp Plan
The SQL Bootcamp is designed to get beginners up to speed in SQL for data analysis. At Datacreeks, we believe that 20% of SQL skills drive 80% of the output, regardless of the organization. By focusing on the topics that matter most, candidates gain confidence quickly.

One thing is certain: SQL only gets complicated when we make it so. It doesn't have to be that way. We're here to simplify it and make learning fun.

In this course, we take a case study approach built around a small café startup selling coffee in the neighborhood. The startup is brand new, and so is its data, which means the volume is small by design. With low-volume data, beginners can clearly see what's happening behind the scenes. Large datasets tend to get confusing early on, so we keep things light to keep the focus on understanding.

# The Course Plan

A beginner-friendly path to SQL for data analysis, built around a single case study: a small neighborhood café startup. Each module builds on the last, using low-volume data so you can always see what's happening behind the scenes.

---

## Module 1: Problem Definition (Case Study)

Set the scene with the café startup. We introduce the business, the questions it needs answered (sales, products, customers), and why SQL is the right tool to answer them. Everything that follows ties back to this case study.

## Module 2: Introduction to RDBMS

- **Why SQL skills matter** — Where SQL fits in the data analysis workflow and why it's one of the most in-demand skills.
- **How companies store their data** — From spreadsheets to databases, and why structured storage scales.
- **Types of relational databases** — An overview of common engines such as PostgreSQL and MySQL, and how they differ.
- **Core operations** — A first look at the actions you perform on data: INSERT, UPDATE, and DELETE.

## Module 3: Database Setup

- **A simple Excel setup** — Model the café's data in a spreadsheet first: creating a table, defining columns, and adding rows.
- **The limitations of Excel** — Where spreadsheets break down when you try to insert, update, or delete data reliably.
- **The RDBMS solution** — Plan an alternative to the spreadsheet, design an Entity Relationship Diagram (ERD), and learn how to read ERDs you encounter elsewhere.
- **Characteristics and advantages of an RDBMS** — Why a relational database solves the problems Excel can't.

## Module 4: Querying an Existing Table

- **Load data into the database** — Use a provided script to populate the café tables.
- **The SELECT clause** — Your primary tool for reading data, including basic mathematical and string operations inside a query.
- **Selecting data** — Return a full table, then narrow to specific columns.
- **Sorting and limiting** — Order results with ORDER BY and cap the output with LIMIT.

## Module 5: Basic Data Cleaning in SQL

- **Inspect column formats** — Check how each column stores its data before cleaning it.
- **Change data types** — Convert between float, integer, text/string, date, and timestamp.
- **Date formatting** — Work with the main date and time types:
  - `DATE` — `YYYY-MM-DD`
  - `DATETIME` — `YYYY-MM-DD HH:MI:SS`
  - `SMALLDATETIME` — `YYYY-MM-DD HH:MI:SS`
  - `TIME` — `HH:MI:SS`
  - `TIMESTAMP` — a single point-in-time value
- **Date extraction functions** — Pull parts out of dates and do date math: `EXTRACT()`, `DATE_TRUNC()`, `AGE()`, and `CURRENT_DATE`.
- **String operations** — Tidy text with `TRIM`, `RIGHT`, `LEFT`, `UPPER`, `LOWER`, and `REPLACE`.

## Module 6 — Aggregate Functions

Summarize the café's data into meaningful numbers.

- `DISTINCT` — remove duplicate values.
- `COUNT` and `COUNT(DISTINCT …)` — count rows and unique values.
- `MAX`, `MIN`, `SUM`, `AVG` — the core summary statistics.
- **Grouping** — combine categorical data with aggregates using `GROUP BY`.
- `STRING_AGG()` — roll text values up into a single grouped result.

## Module 7: Filter Operations

Narrow results down to exactly the rows you need.

- **Logical operators** — `AND`, `OR`.
- **Comparison operators** — `=`, `<>`, `>`, `<`, `>=`, `<=`.
- **Wildcards** — `LIKE` and `ILIKE` for pattern matching.
- **NULL checks** — `IS NULL` / `IS NOT NULL`.
- **Range and set membership** — `BETWEEN` and `IN`.
- **NULL handling functions** — `COALESCE()` to supply fallbacks and `NULLIF()` to neutralize unwanted values.

## Module 8: SQL Joins

Combine data from multiple café tables.

- **INNER JOIN** — only matching rows.
- **LEFT JOIN** and **RIGHT JOIN** — keep all rows from one side.
- **FULL OUTER JOIN** — keep everything from both sides.
- **SELF JOIN** — join a table to itself.

## Module 9: CASE Statements

Add conditional logic inside queries to bucket, label, or transform values on the fly (for example, tagging orders as "small," "medium," or "large").

## Module 10: SQL Unions

Stack the results of multiple queries together.

- `UNION` — combine and remove duplicates.
- `UNION ALL` — combine and keep duplicates.

## Module 11: Pivot Tables in SQL

Reshape rows into columns to produce cross-tab style summaries, such as sales by product across days of the week.

## Module 12: Subqueries & Common Table Expressions (CTEs)

Break complex questions into readable steps using nested subqueries and the `WITH` clause to define CTEs.

## Module 13: Views

Save a query as a reusable, named virtual table so common reports can be queried again without rewriting the logic.

## Module 14: Advanced SQL (Defining Structure)

Move from reading data to defining and shaping it.

- **Databases** — `CREATE DATABASE` and `DROP`.
- **Tables** — `CREATE TABLE`, `DROP`, and `ALTER TABLE`.
- **Constraints** — enforce data quality with `NOT NULL`, `CHECK`, `UNIQUE`, `DEFAULT`, `PRIMARY KEY`, `FOREIGN KEY`, and `AUTO_INCREMENT`, plus creating an index for performance.

## Module 15: Window Functions

Run calculations across related rows without collapsing them into a single group.

- `RANK`, `ROW_NUMBER`, `DENSE_RANK` — ordering and ranking.
- `LAG`, `LEAD` — look at previous and next rows.
- **Running totals** — cumulative sums over an ordered window.

## Module 16: Build Your Own Small Database

Bring it all together by building and populating a database from scratch.

- **INSERT, UPDATE, DELETE** — manage the records yourself.
- **Ingest a dataset** — load roughly 50 rows of café data and run your own analysis end to end.