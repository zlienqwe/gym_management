package com.tw.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Zlien on 7/27/15.
 */

@RestController
@RequestMapping("/")
public class IndexController {

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView getIndexPage(){
        return new ModelAndView("index");
    }
}