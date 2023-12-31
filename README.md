# sql-challenge
## Data Modeling 
- Created an Entity Relationship Diagram for table schemas with all tables 
## Data Engineering
- Created the following tables containing the information about
    - departments 
        - columns contain:
            - department number
            - department name
        - primary key: department number
    - titles of employees
        - columns contain employee:
            - title number
            - title name
        - primary key: title number
    - employee details
        - columns contain:
            - employee number
            - title number
            - birth date
            - first name
            - last name
            - sex
            - hire date
        - primary key: employee number
        - foreign key title number (references title number in the table containing titles of employees)
    - salaries
        - columns contain:
            - employee number
            - salary
        - primary key: employee number
        - foreign key: employee number (references employee number in the table containing employee details)
    - department managers
        - columns contain:
            - employee number
            - department number
        - primary key: employee number
        - foreign key: employee number (references employee number in the table containing employee details)
    - employees and departments
        - columns contain:
            - employee number
            - department number
        - foreign key: employee number (references employee number in the table containing employee details)
## Data Analysis 
- queried to get the tables containing the information listed below:
    - Lists the employee number, last name, first name, sex, and salary of each employee 
    - Lists the first name, last name, and hire date for the employees who were hired in 1986 
    - Lists the manager of each department along with their department number, department name, employee number, last name, and first name 
    - Lists the department number for each employee along with that employee’s employee number, last name, first name, and department name 
    - Lists first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
    - Lists each employee in the Sales department, including their employee number, last name, and first name 
    - Lists each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
    - Lists the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
## Collaborations
- collaborated on the challenge with the following people:
    - Jasleen Kaur
    - Vanessa Delgado
    - Private Tutor (Harsimran Kaur)