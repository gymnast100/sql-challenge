# SQL Challenge - Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Scenario Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pweitt Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

##  Goal of this project :
To  design tables were to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

## Procedure:

#### Data Modeling

 To Inspect the CSVs and sketch out an ERD of the tables using a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* To use the information to create a table schema for each of the six CSV files , specify data types, primary keys, foreign keys, and other constraints.

* Import each CSV file into the corresponding SQL table.

#### Data Analysis

Having a complete database,the following was done :

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Scenario Bonus(Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:
## Procedure :

1. Imported the SQL database into Pandas. 

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consulted [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

2. Create a bar chart of average salary by title.( Included in the ipynb file)


## Scenario Epilogue 

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

new_data = pd.read_sql('SELECT * FROM employees WHERE emp_no = 499942', conn)
new_data

	emp_no	birth-date	first_name	last_name	gender	hire_date
0	499942	1963-01-10	   April	    Foolsday	  F	  1997-02-10




