package com.example.accessingdatamysql.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.example.accessingdatamysql.model.Person;
import com.example.accessingdatamysql.service.PersonService;

@Controller
class LoginController {
    @GetMapping("/login")
    String loginPage(Model model, HttpServletRequest request) {
        CsrfToken csrfToken = (CsrfToken) request.getAttribute(CsrfToken.class.getName());
        if (csrfToken != null) {
            model.addAttribute("_csrf", csrfToken);
        }
        return "login";
    }
}

// Returning the JSP hello View
@Controller
class HelloController {
	@GetMapping({"/", "/hello"})
	public String hello() {
		return "hello";
	}
}

// Returning the JSP welcome View
@Controller
class WelcomeController {
	@GetMapping(path="/welcome")
	public String welcome() {
		return "welcome";
	}
}

@Controller	// This means that this class is a Controller
public class MainController {

	@Autowired // This means to get the bean called userRepository
			   // Which is auto-generated by Spring, we will use it to handle the data
	private PersonService personService;

	
	@GetMapping("/demo/mvclistpersons")
	public ModelAndView getAllUsers() {
		
		ModelAndView model = new ModelAndView("person_list");
		List<Person> personList = personService.getAll();
		model.addObject("personList", personList);

		return model;
	}


	// This method Get a Person by Id and populate the fields of the Form by the data 
	// of the Person
	@RequestMapping(value="/demo/mvcupdateperson/{id}", method=RequestMethod.GET)
	public ModelAndView editPerson(@PathVariable long id) {

	 ModelAndView model = new ModelAndView();
	 Person person = personService.getPersonById(id);
	 model.addObject("personForm", person);
	 model.setViewName("person_form");
	 
	 return model;
	}

	// Display the Form used to Add a Person 
	@RequestMapping(value="/demo/mvccreateperson", method=RequestMethod.GET)
	public ModelAndView createPerson() {

	 ModelAndView model = new ModelAndView();
	 Person person = new Person();
	 model.addObject("personForm", person);
	 model.setViewName("person_form");
	 
	 return model;
	}

	// This method save the data of the Person entered in the Form by Update or Create
	// and display Errors if any or redirect to the JSP View with the list of persons if success
	@RequestMapping(value="/demo/mvcsaveperson", method=RequestMethod.POST)
	public String save( @ModelAttribute("personForm") Person person, BindingResult bindingResult) {
	
		if (bindingResult.hasErrors()) {
			
	       return "person_form";
		}
		
	    personService.saveOrUpdate(person);
	    return "redirect:/demo/mvclistpersons";
	   
	}
	

	// Delete a Person by the ID and redirect to the JSP Viev representing a list of persons
	@RequestMapping(value="/demo/mvcdeleteperson/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") long id) {
	 
		personService.deletePerson(id);
	 
	 return new ModelAndView("redirect:/demo/mvclistpersons");
	}

	
	
}
