package com.tw.controller;

import com.tw.entity.Employee;
import com.tw.service.EmployeeService;
import com.tw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Zlien on 7/27/15.
 */

@RestController
@RequestMapping(value = "/employees")
public class
        EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getEmployeesPage(){
        return new ModelAndView("employees", "employees", employeeService.getAllEmployees());
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView getEmployeesUpdatePage(@PathVariable int id){

        return new ModelAndView("updateEmployee", "employee", employeeService.getEmployeeById(id));
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public ModelAndView updateEmployee(@PathVariable int id,
                               @RequestParam String employeeName,
                               @RequestParam String role,
                               @RequestParam String email,
                               @RequestParam String gender,
                               @RequestParam int age){

        Employee employee = new Employee(id, employeeName, role, gender, email, age);
        employeeService.updateEmployee(employee);
        return new ModelAndView("redirect:/employees");
    }

    @RequestMapping(value = "/creation", method = RequestMethod.GET)
    public ModelAndView getCreationPage(){

        return new ModelAndView("createEmployee", "users", userService.getAllUsers());
    }

    @RequestMapping(value = "/creation", method = RequestMethod.POST)
    public void createEmployee(@RequestParam String employeeName,
                               @RequestParam String role,
                               @RequestParam String email,
                               @RequestParam String gender,
                               @RequestParam int age){

//        User user = userService.getUsersByName(userName).get(0);
//        Employee employee = new Employee(employeeName, role, user);
        Employee employee = new Employee(employeeName, role, gender, email, age);
        employeeService.createEmployee(employee);
    }
}