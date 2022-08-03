package com.spring.project;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.service.ContentService;



@Controller
@RequestMapping("/content/*")
public class ContentController {

	
	private static final Logger logger = LoggerFactory.getLogger(ContentController.class);
	
	@Inject
	private ContentService service;
	
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.GET)
	public void ex_recommGET() throws Exception {

	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.POST)
	public String ex_recommPOST(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			return "/content/ex_recomm/ex_recomm_start";
		}
		rttr.addFlashAttribute("msg", "LoginRequired");
		return "redirect:/user/loginForm";
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_start", method = RequestMethod.GET)
	public void ex_recomm_start() throws Exception {
		
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm2", method = RequestMethod.GET)
	public void ex_recomm2() throws Exception {
		
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm3", method = RequestMethod.GET)
	public void ex_recomm3() throws Exception {
		
	}
	

	@RequestMapping(value = "/ex_recomm/ex_recomm4", method = RequestMethod.GET)
	public void ex_recomm4() throws Exception {
		
	}
	
	@RequestMapping(value = "/membership", method = RequestMethod.GET)
	public void membership() throws Exception {
		
	}
	
	@RequestMapping(value = "/tr/tr_main", method = RequestMethod.GET)
	public void tr_main() throws Exception {
		
	}
	@RequestMapping(value = "/tr/tr_main", method = RequestMethod.POST)
	public String tr_mainPOST(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			return "/content/tr/tr_loading";
		}
		rttr.addFlashAttribute("msg", "LoginRequired");
		return "redirect:/user/loginForm";
	}

	@RequestMapping(value = "/tr/tr_loading", method = RequestMethod.GET)
	public void tr_loading() throws Exception {
		
	}
	@RequestMapping(value = "/trainer", method = RequestMethod.GET)
	public void trainer() throws Exception {
		
	}
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public void gym() throws Exception {
		
	}
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public void help() throws Exception {
		
	}
	
	
}
