# SQL Challenge - Employee Database: 

##  Goal of this project :

The goal of this project was for me to design tables to hold data found in 6 CSVs (information about employees of a corporation), import the CSVs into a SQL database, and run Queries to answer questions about the data. 

## Procedure:

#### Data Modeling

 I inspected the CSVs and sketched out an ERD of the tables using a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).
 ![ERD](/images/erd.png)

#### Data Engineering

* I used the information to create a table schema for each of the six CSV files , specify data types, primary keys, foreign keys, and other constraints.

*  I imported each CSV file into the corresponding SQL table.

#### Data Analysis

To achieve a complete database, I performed following :

1. Listed the following details of each employee: employee number, last name, first name, gender, and salary.

2. Listed employees who were hired in 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed all employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.

9. I created a bar chart of average salary by title.( Included in the ipynb file)

## Querying for employee ID number is 499942.
 
 I examined the data and took the following steps to generate a visualization of the data.
 ![barchart](/images/barchart)

## Procedure :

1. Imported the SQL database into Pandas. 

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

2.  I created a bar chart of average salary by title.( Included in the ipynb file)

3. I queried for employee ID number is 499942 .
	new_data = pd.read_sql('SELECT * FROM employees WHERE emp_no = 499942', conn)
	new_data

		emp_no	birth-date	first_name	last_name	gender	hire_date
	0	499942	  1963-01-10	     April	    Foolsday	  F	  1997-02-10

#### employee ID number 499942 had a name of "APRIL FOOLSDAY" !

