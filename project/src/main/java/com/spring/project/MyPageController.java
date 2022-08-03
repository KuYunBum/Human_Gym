package com.spring.project;

import java.util.List;
import java.util.Map;

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

import com.spring.dto.ExerciseChartDTO;
import com.spring.dto.InbodyDTO;
import com.spring.dto.UserDTO;
import com.spring.service.MyPageService;
import com.spring.service.UserService;

@Controller
@RequestMapping("/user/*")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Inject
	private UserService us;
	@Inject
	private MyPageService ms;

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void myPage(int userNum, Model model) throws Exception {
		model.addAttribute(us.userDetail(userNum));
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updateGET(int userNum, Model model) throws Exception {
		model.addAttribute(us.userDetail(userNum));
		System.out.println(userNum);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePOST(UserDTO dto, int userNum, Model model, RedirectAttributes rttr) throws Exception {

		us.userUpdate(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/myPage?userNum=" + userNum;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int userNum, HttpServletRequest request, RedirectAttributes rttr) throws Exception {

		us.userDelete(userNum);

		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("userNum");

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/";
	}

	// 인바디
	@RequestMapping(value = "/inbody/detail", method = RequestMethod.GET)
	public void inbodyGET(int userNum, Model model) throws Exception {

		if ((ms.inbodyDetail(userNum)) != null) {
			model.addAttribute(ms.inbodyDetail(userNum));
		}

	}

	@RequestMapping(value = "/inbody/insert", method = RequestMethod.GET)
	public void inbodyInsertGET(int userNum, Model model) throws Exception {

		model.addAttribute(us.userDetail(userNum));
	}

	@RequestMapping(value = "/inbody/insert", method = RequestMethod.POST)
	public String inbodyInsertPOST(InbodyDTO dto, int userNum, RedirectAttributes rttr) throws Exception {

		ms.inbodyInsert(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/inbody/detail?userNum=" + userNum;
	}

	@RequestMapping(value = "/inbody/update", method = RequestMethod.GET)
	public void inbodyUpdateGET(int userNum, Model model) throws Exception {

		if ((ms.inbodyDetail(userNum)) != null) {
			model.addAttribute(ms.inbodyDetail(userNum));
		}
	}

	@RequestMapping(value = "/inbody/update", method = RequestMethod.POST)
	public String inbodyUpdatePOST(InbodyDTO dto, int userNum, RedirectAttributes rttr) throws Exception {

		ms.inbodyUpdate(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/inbody/detail?userNum=" + userNum;
	}

	@RequestMapping(value = "/routineBox", method = RequestMethod.GET)
	public void routineBox() throws Exception {

	}

	@RequestMapping(value = "/record/record", method = RequestMethod.GET)
	public void record(int userNum, Model model) throws Exception {
		model.addAttribute("list", ms.recordList(userNum));
		int arm = 0;
		int upper = 0;
		int back = 0;
		int lower = 0;
		int core = 0;

//		for (int i = 0; i < ms.chartData(userNum).size(); i++) {
//			for (int j = i + 1; j < ms.chartData(userNum).size(); j++) {
//				if (ms.chartData(userNum).get(i).getExpartCode().equals(ms.chartData(userNum).get(j).getExpartCode())) {
//					arm += ms.chartData(userNum).get(i).getSetCount();
//					arm += ms.chartData(userNum).get(j).getSetCount();
//				}
//			}
//		}
		try {
			for (int i = 0; i < ms.chartData(userNum).size(); i++) {
				String kind = ms.chartData(userNum).get(i).getExpartCode();
				int count = ms.chartData(userNum).get(i).getSetCount();
				if (kind.equals("userBack")) {
					back += count;
				} else if (kind.equals("userUpper")) {
					upper += count;
				} else if (kind.equals("userArm")) {
					arm += count;
				} else if (kind.equals("userLower")) {
					lower += count;
				} else if (kind.equals("userCore")) {
					core += count;
				}
			}
			model.addAttribute("arm", arm);
			model.addAttribute("upper", upper);
			model.addAttribute("back", back);
			model.addAttribute("lower", lower);
			model.addAttribute("core", core);
		} catch (Exception e) {
			System.out.println(e);
		}
//		model.addAttribute("chartData", list);

		System.out.println(ms.chartData(userNum));
	}

}
