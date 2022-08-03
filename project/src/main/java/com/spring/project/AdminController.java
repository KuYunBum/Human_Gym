package com.spring.project;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.UserDTO;
import com.spring.service.UserService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	private UserService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
		
		model.addAttribute("list", service.userList());
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int userNum, RedirectAttributes rttr) throws Exception {
		
		service.userDelete(userNum);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/admin/list";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int userNum, Model model) throws Exception {
		model.addAttribute(service.userDetail(userNum));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updateGET(int userNum, Model model) throws Exception {
		model.addAttribute(service.userDetail(userNum));
	}		
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePOST(UserDTO dto, Model model, RedirectAttributes rttr) throws Exception {
		
		service.userUpdate(dto);
		
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/admin/list";
	}
	
	
}
