package com.spring.project;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.BoardDTO;
import com.spring.service.BoardService;
import com.spring.service.UserService;



@Controller
@RequestMapping("/content/*")
public class ContentController {

	
	private static final Logger logger = LoggerFactory.getLogger(ContentController.class);
	
	@Inject
	private BoardService service;
	@Inject
	private UserService us;
	
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.GET)
	public void ex_recommGET() throws Exception {

	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_start", method = RequestMethod.GET)
	public String ex_recomm_start(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			return "/content/ex_recomm/ex_recomm_start";
		}
		rttr.addFlashAttribute("msg", "LoginRequired");
		return "redirect:/user/loginForm";
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_simple1", method = RequestMethod.GET)
	public void ex_recomm_simple1(int userNum, Model model) throws Exception {
		model.addAttribute("userDTO", us.userDetail(userNum));
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_simple2", method = RequestMethod.GET)
	public void ex_recomm_simple2(int userNum, Model model) throws Exception {
		model.addAttribute("userDTO", us.userDetail(userNum));
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_stretching", method = RequestMethod.GET)
	public void ex_recomm_stretching(int userNum, Model model) throws Exception {
		model.addAttribute("userDTO", us.userDetail(userNum));
	}

	@RequestMapping(value = "/ex_recomm/ex_recomm_detail1", method = RequestMethod.GET)
	public void ex_recomm_detail1(int userNum, Model model) throws Exception {
		model.addAttribute("userDTO", us.userDetail(userNum));
	}
	@RequestMapping(value = "/ex_recomm/ex_recomm_detail2", method = RequestMethod.GET)
	public void ex_recomm_detail2(int userNum, Model model) throws Exception {
		model.addAttribute("userDTO", us.userDetail(userNum));
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
	
	@RequestMapping(value = "/trainer", method = RequestMethod.POST)
	public String trainerPOST(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			return "/content/tr/tr_consult";
		}
		rttr.addFlashAttribute("msg", "LoginRequired");
		return "redirect:/user/loginForm";
	}
	
	@RequestMapping(value = "/consult_insert", method = RequestMethod.POST)
	public String consult_insertPOST(BoardDTO dto, RedirectAttributes rttr) throws Exception {
		
		logger.info(dto.toString());
		
		service.insert(dto);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/tr/tr_consult", method = RequestMethod.POST)
	public String tr_consultPOST(BoardDTO dto, RedirectAttributes rttr) throws Exception {
		
		logger.info(dto.toString());
		
		service.insert(dto);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/tr/tr_consult", method = RequestMethod.GET)
	public void tr_consult() throws Exception {
		
	}
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public void gym() throws Exception {
		
	}
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public void help() throws Exception {
		
	}
	
	
}
