package com.tw.controller;

import com.tw.entity.Customer;
import com.tw.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Zlien on 7/27/15.
 */

@RestController
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getCustomersPage(){
        return new ModelAndView("customers", "customers", customerService.getAllCustomers() );
    }

    @RequestMapping(value = "/creation", method = RequestMethod.GET)
    public ModelAndView getCreationPage(){
        return new ModelAndView("createCustomer");
    }

    @RequestMapping(value = "/creation", method = RequestMethod.POST)
    public ModelAndView createCustomer(@RequestParam String customerName){
        Customer customer = new Customer(customerName);
        customerService.createCustomer(customer);

        return new ModelAndView("redirect:/customers");
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable int id){

        return new ModelAndView("updateCustomer", "customer", customerService.getCustomerById(id));
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public ModelAndView updateCustomer(@PathVariable int id,
                                       @RequestParam String customerName){

        customerService.updateNameCustomer(customerService.getCustomerById(id), customerName);
        return new ModelAndView("redirect:/customers");
    }

    @RequestMapping(value = "/deletion/{id}", method = RequestMethod.DELETE)
    public void deleteCustomerById(@PathVariable int id){
        Customer customer = customerService.getCustomerById(id);
        customerService.deleteCustomer(customer);
    }
}
