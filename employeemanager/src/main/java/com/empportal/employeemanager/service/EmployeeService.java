package com.empportal.employeemanager.service;

import com.empportal.employeemanager.model.Employee;
import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployees();
    void saveEmployee(Employee emp);
    Employee getEmployeeById(Integer id);
    void deleteEmployeeById(Integer id);
}
