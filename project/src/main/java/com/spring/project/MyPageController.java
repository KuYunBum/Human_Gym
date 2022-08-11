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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.BoardDTO;
import com.spring.dto.ExerciseChartDTO;
import com.spring.dto.InbodyDTO;
import com.spring.dto.RecordDTO;
import com.spring.dto.RoutineDTO;
import com.spring.dto.UserDTO;
import com.spring.dto.UserRecordDTO;
import com.spring.service.BoardService;
import com.spring.service.MyPageService;
import com.spring.service.UserService;
import com.spring.vo.PageMaker;

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
		System.out.println(dto);

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
	
	
//	루틴
	
	@RequestMapping(value = "/routine/routineBox", method = RequestMethod.GET)
	public void routineBox(@RequestParam("userNum")int userNum, Model model) throws Exception {

	model.addAttribute("list",ms.routineList(userNum));
	System.out.println(ms.routineList(userNum));

	}
	
	@RequestMapping(value = "/routine/routineAI", method = RequestMethod.GET)
	public void routineAI(@RequestParam("userNum")int userNum, Model model) throws Exception {

	model.addAttribute("list",ms.routineList(userNum));
	}
	
//	루틴 insert
	@RequestMapping(value = "/routine/insert", method = RequestMethod.GET)
	public void routineInsertGET(int userNum, Model model) throws Exception {

		model.addAttribute(ms.routineList(userNum));
	}
	
	@RequestMapping(value = "/routine/insert", method = RequestMethod.POST)
	public String routineInsertPOST(RoutineDTO dto,  RedirectAttributes rttr) throws Exception {

		System.out.println(dto);
		ms.routineInsert(dto);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/routine/routineBox?userNum=" + dto.getUserNum();
	}
	
	@RequestMapping(value = "/routine/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("routineNum") int routineNum, RoutineDTO dto, RedirectAttributes rttr) throws Exception {
		
		ms.routineDelete(routineNum);
		return "redirect:/user/routine/routineBox?userNum=" + dto.getUserNum();
	}
	
	
	@RequestMapping(value = "/routine/detail", method = RequestMethod.GET)
	public void detail(@RequestParam("routineNum")int routineNum, Model model) throws Exception {
		System.out.println(ms.routineDetail(routineNum).getRoutineNum());
		model.addAttribute("list", ms.routineDetail(routineNum));
		System.out.println(ms.routineDetail(routineNum));
	}

//	routine update
	@RequestMapping(value = "/routine/update", method = RequestMethod.GET)
	public void routineUpdateGET(@RequestParam("routineNum")int routineNum, Model model) throws Exception {

			model.addAttribute(ms.routineList(routineNum));
	}

	@RequestMapping(value = "/routine/update", method = RequestMethod.POST)
	public String routineUpdatePOST(RoutineDTO dto, int userNum, RedirectAttributes rttr) throws Exception {

		ms.routineUpdate(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/routine/routineBox?userNum=" + dto.getUserNum();
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

//		System.out.println(ms.chartData(userNum));
	}
	
	@RequestMapping(value = "/record/insert", method = RequestMethod.GET)
	public void recordInsertGET(int userNum, Model model) throws Exception {

		model.addAttribute(ms.recordList(userNum));
		model.addAttribute(ms.chartData(userNum));
//		System.out.println(ms.chartData(userNum));
	}

	@RequestMapping(value = "/record/insert", method = RequestMethod.POST)
	public String recordInsertPOST(RecordDTO dto,ExerciseChartDTO chartdto, String exname) throws Exception {
//		System.out.println("post 들어옴");
		
		ExerciseChartDTO getExID = ms.exidSelect(exname);
		int exid=(getExID.getExid());
//		System.out.println(exid);
		chartdto.setExid(exid); 
		
//		System.out.println(chartdto);
		ms.recordInsert(dto);
		ms.chartInsert(chartdto);

		return "redirect:/user/record/record?userNum=" + dto.getUserNum();
	}
	
	@RequestMapping(value = "/record/update", method = RequestMethod.GET)
	public void recordUpdateGET(int userNum, int recordNum, Model model) throws Exception {

		RecordDTO getDTO = new RecordDTO();
		getDTO.setRecordNum(recordNum);
		getDTO.setUserNum(userNum);
		System.out.println(getDTO);
//		RecordDTO aaa = ms.recordDetail(getDTO);
//		System.out.println(aaa);
		model.addAttribute(ms.recordDetail(getDTO));
		
	}

	@RequestMapping(value = "/record/update", method = RequestMethod.POST)
	public String recordUpdatePOST(RecordDTO dto, RedirectAttributes rttr) throws Exception {
//		System.out.println(dto.getUserNum());
//		System.out.println(dto.getRecordNum());
//		System.out.println(dto.getStartHour());
//		System.out.println(dto.getStartMinute());
//		System.out.println(dto.getEndHour());
//		System.out.println(dto.getEndMinute());
		
		
		ms.recordUpdate(dto);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/record/record?userNum=" + dto.getUserNum();
	}

}
