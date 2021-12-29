using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiEmployee.Models;

namespace WebApiEmployee.EmployeeData
{
    public class MockEmployeeData : IEmployeeData
    {
        private List<Employee> employees = new List<Employee>()
        {
            new Employee()
            {
                id=Guid.NewGuid(),
                Name="Employee One"
            },
               new Employee()
            {
                id=Guid.NewGuid(),
                Name="Employee Two"
            }
        };

        public Employee AddEmployee(Employee employee)
        {
            employee.id = Guid.NewGuid();
            employees.Add(employee);
            return employee;
        }

        public void DeleteEmployee(Employee employee)
        {
            employees.Remove(employee);
        }

        public Employee EditEmployee(Employee employee)
        {
            var existingEmployee = GetEmployee(employee.id);
            existingEmployee.Name = employee.Name;
            return existingEmployee;
        }

        public Employee GetEmployee(Guid id)
        {
            return employees.SingleOrDefault(x => x.id == id);
        }

        public List<Employee> GetEmployees()
        {
            return employees;
        }
    }
}
