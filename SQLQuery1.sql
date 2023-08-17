create procedure hcm.getemployeesByDepartment(@department_nameVARCHAR(50))
AS BEGIN
Select 
e.employee_id,
e.first_name,
e.last_name,
d.department_name,
from hcm.employees e inner join hcm.departments d
on e.department_name=@department_name;
END