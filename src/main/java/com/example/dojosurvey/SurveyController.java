package com.example.dojosurvey;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {

	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit(@RequestParam(value="name") String name, @RequestParam(value="language") String language, @RequestParam(value="location") String location, @RequestParam(value="comment", required=false) String comment, HttpSession session) {
		
		session.setAttribute("name", name);
		session.setAttribute("language", language);
		session.setAttribute("location", location);
		session.setAttribute("comment", comment);
		
		if(language.equals("Java")) {
			return "redirect:/java";
		}

		
		return "redirect:/results";
	}
	
	@RequestMapping("/results")
	public String results(Model model, HttpSession session) {
		String name= (String) session.getAttribute("name");
		String language= (String) session.getAttribute("language");
		String location= (String) session.getAttribute("location");
		String comment= (String) session.getAttribute("comment");
		
		model.addAttribute("name", name);
		model.addAttribute("language", language);
		model.addAttribute("location", location);
		model.addAttribute("comment", comment);
		
		return "result.jsp";
	}
	
	@RequestMapping("/java")
	public String java() {
		return "java.jsp";
	}
}
