package com.solar.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Justin on 2/11/2016.
 */
@Controller
public class IndexController{

    @RequestMapping(value="/", method= RequestMethod.GET)
    public ModelAndView index() {

        ModelAndView mav = new ModelAndView("index");

        return mav;
    }

    @RequestMapping(value="/tool", method= RequestMethod.GET)
    public ModelAndView tool() {

        ModelAndView mav = new ModelAndView("partials/_index");

        return mav;
    }
}
