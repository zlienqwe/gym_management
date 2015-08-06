package com.tw.controller;

import com.tw.Util.Md5Util;
import com.tw.entity.Employee;
import com.tw.entity.User;
import com.tw.service.EmployeeService;
import com.tw.service.UserService;
import flexjson.JSONSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private EmployeeService employeeService;

    private ModelAndView createModelAndView(String viewName, String objectName, Object objectValue) {

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName(viewName);
        modelAndView.addObject(objectName, objectValue);

        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.GET)
//    @ResponseBody
    public List<User> getAllUsers() {

        return userService.getAllUsers();
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public void getUserById(@PathVariable int id,
                            HttpServletResponse response) {

        User user = userService.getUserById(id);

        JSONSerializer serializer = new JSONSerializer();
        String result = serializer.include("employee").serialize(user);
        try {
            response.setCharacterEncoding("utf-8");
            response.getWriter().write(result.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public void updateUser(@PathVariable int id,
                           @RequestParam String name,
                           @RequestParam String password,
                           HttpServletResponse response) {

        User user = new User(id, name, password, null);

        System.out.println(user);
        userService.updateUser(user);


        JSONSerializer serializer = new JSONSerializer();
        String result = serializer.include("employee").serialize(user);
        try {
            response.getWriter().write(result.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/creation", method = RequestMethod.GET)
    public ModelAndView getCreateUserPage() {

        return new ModelAndView("createUser", "employees", employeeService.getAllEmployees());
    }

    @RequestMapping(value = "/creation", method = RequestMethod.POST)
    public ModelAndView createUser(@RequestParam String name,
                                   @RequestParam String password,
                                   @RequestParam String employeeName) {

        Employee employee = employeeService.getEmployeeByName(employeeName);

        User user = new User(name, Md5Util.md5(password), employee);
        userService.createUser(user);

        return new ModelAndView("redirect:/users");
    }

    @RequestMapping(value = "/deletion/{id}", method = RequestMethod.DELETE)
    public void deleteUser(@PathVariable int id) {

        User user = userService.getUserById(id);
        userService.deleteUser(user);
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdateUserAge(@PathVariable int id) {

        User user = userService.getUserById(id);
        return createModelAndView("updateUser", "user", user);
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.PUT)
    public ModelAndView UpdateUser(@PathVariable int id,
                                   @RequestParam String name,
                                   @RequestParam String password) {

        User user = userService.getUserById(id);
        user.setName(name);
        user.setPassword(password);

        userService.updateUser(user);

        return new ModelAndView("redirect:/users");
    }
}