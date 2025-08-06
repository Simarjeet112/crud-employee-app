package com.empportal.employeemanager.controller;

import com.empportal.employeemanager.model.Employee;
import com.empportal.employeemanager.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        List<Employee> list = employeeService.getAllEmployees();
        model.addAttribute("employeeList", list);
        return "viewEmployees";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "addEmployee";
    }


    @PostMapping("/save")
    public String saveEmployee(@ModelAttribute("employee") Employee emp) {
        employeeService.saveEmployee(emp);
        return "redirect:/";
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable("id") Integer id, Model model) {
        Employee emp = employeeService.getEmployeeById(id);
        model.addAttribute("employee", emp);
        return "updateEmployee";
    }

    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute("employee") Employee emp) {
        employeeService.saveEmployee(emp);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable("id") Integer id) {
        employeeService.deleteEmployeeById(id);
        return "redirect:/";
    }

    @GetMapping("/find")
    public String searching(){
        return "search";
    }
    @PostMapping("/find")
    public String searchByID(@RequestParam("id") Integer id, Model model){
        Employee emp = employeeService.getEmployeeById(id);
        model.addAttribute("employee", emp);
        return "searchResult";
    }
}
