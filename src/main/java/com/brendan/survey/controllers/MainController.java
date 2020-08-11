package com.brendan.survey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class MainController {

	
		@GetMapping("")
		public String index(HttpSession session, Model model) {
			if(session.getAttribute("count") == null) {
				session.setAttribute("count", 0);
			}
			return "index.jsp";
		}
		
		@RequestMapping(path="process", method=RequestMethod.POST)
		public String process(@RequestParam(value="name") String name, 
							  @RequestParam(value="location") String location,
							  @RequestParam(value="language") String langauge,
							  @RequestParam(value="comment") String comment, 
							  HttpSession session) {
			session.setAttribute("name", name);
			session.setAttribute("location", location);
			session.setAttribute("language", langauge);
			session.setAttribute("comment", comment);
			Integer prev = (Integer) session.getAttribute("count");
			prev++;
			session.setAttribute("count", prev);
			
			return "redirect:/result";
		}
		
		@RequestMapping("result")
		public String result(HttpSession session) {
		
			return session.getAttribute("language").equals("java") ? "java.jsp" : "result.jsp";
		}


}
