package com.tw.controller;

import com.tw.entity.Employee;
import com.tw.service.EmployeeService;
import com.tw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


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
    public List<Employee> getAllEmployees(){
        return employeeService.getAllEmployees();
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
//
//    @RequestMapping( method = RequestMethod.GET)
//    public ModelAndView getCreationPage(){
//
//        return new ModelAndView("createEmployee", "users", userService.getAllUsers());
//    }

    @RequestMapping( method = RequestMethod.POST)
    @ResponseBody
    public void createEmployee(@RequestBody Employee employee){

        employeeService.createEmployee(employee);
    }
}