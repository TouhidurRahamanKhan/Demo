package com.touhid.app.web.controllers;

import com.touhid.app.entity.Person;
import com.touhid.app.web.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @author touhid
 * @since 1/28/19
 */
@Controller
public class PersonController {

    @Autowired
    private PersonService personService;

    @GetMapping("/")
    public String hello(Model model) {
        Person person = new Person();
        model.addAttribute("person", person);
        model.addAttribute("persons", personService.getAll());
        return "index";
    }

    @PostMapping("/")
    public String save(@ModelAttribute Person person) {
        personService.save(person);
        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping(("/home"))
    public String home(@ModelAttribute Person person) {
        personService.save(person);
        return "Hello World";
    }
}
