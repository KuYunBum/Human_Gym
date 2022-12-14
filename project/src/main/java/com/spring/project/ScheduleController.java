package com.spring.project;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.DateDataDto;
import com.spring.dto.ScheduleDetailDto;
import com.spring.dto.ScheduleDto;
import com.spring.service.ScheduleService;

@Controller
@RequestMapping("/user/schedule")
public class ScheduleController {

	@Inject
	private ScheduleService service;

	@RequestMapping(value = "/insertSchedule", method = RequestMethod.GET)
	public void insertSchedule(@RequestParam("userNum") int userNum, Model model) {
		model.addAttribute("userNum", userNum);
	}

	@RequestMapping(value = "/insertSchedule", method = RequestMethod.POST)
	public String insertEnd(ScheduleDto dto, RedirectAttributes rttr) throws Exception {
		if (dto.getDay() == null) {
			rttr.addFlashAttribute("msg", "noDate");
			return "redirect:/user/schedule/insertSchedule?userNum=" + dto.getUserNum();
		}
		if (dto.getSchedule().equals("")) {
			rttr.addFlashAttribute("msg", "noSchedule");
			return "redirect:/user/schedule/insertSchedule?userNum=" + dto.getUserNum();
		}
		service.create(dto);
		rttr.addFlashAttribute("msg", "success");
		System.out.println(dto.getUserNum());
		return "redirect:/user/schedule/insertSchedule?userNum=" + dto.getUserNum();
	}

	@RequestMapping(value = "/editSchedule", method = RequestMethod.GET)
	public void edit(@RequestParam("scNum") int scNum, Model model) throws Exception {
		model.addAttribute("dto", service.readSchedule(scNum));
	}

	@RequestMapping(value = "/editSchedule", method = RequestMethod.POST)
	public String editEnd(ScheduleDto dto, RedirectAttributes rttr) throws Exception {
		int scNum = dto.getScNum();
		if (dto.getSchedule().equals("")) {
			rttr.addFlashAttribute("msg", "noSchedule");
			return "redirect:/user/schedule/editSchedule?scNum=" + scNum;
		}
		service.updateSchedule(dto);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/schedule/editSchedule?scNum=" + scNum;
	}

	@RequestMapping(value = "/deleteSchedule", method = RequestMethod.GET)
	public void delete() throws Exception {

	}

	@RequestMapping(value = "/deleteSchedule", method = RequestMethod.POST)
	public String delete(ScheduleDto dto, RedirectAttributes rttr) throws Exception {
		service.deleteSchedule(dto);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/user/schedule/deleteSchedule";
	}

	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String calendar(@RequestParam("userNum") int userNum, ScheduleDto dto, Model model,
			HttpServletRequest request, DateDataDto dateData) throws Exception {

		System.out.println(userNum);

		Calendar cal = Calendar.getInstance();
		DateDataDto calendarData;
		ScheduleDetailDto schdto;
		ScheduleDto nullList2;

		// ?????? ??????
		if ("".equals(dateData.getDate()) && "".equals(dateData.getMonth())) {
			dateData = new DateDataDto(String.valueOf(cal.get(Calendar.YEAR)), String.valueOf(cal.get(Calendar.MONTH)),
					String.valueOf(cal.get(Calendar.DATE)), null);
		}
		// ?????? ?????? end

		Map<String, Integer> today_info = dateData.today_info(dateData);
		List<DateDataDto> dateList = new ArrayList<DateDataDto>();

		// ???????????? ?????? ????????? ???????????? ????????? ?????? ??????.
		// ?????? ?????? ??????????????? ???????????? ?????? ????????? ??????
		for (int i = 1; i < today_info.get("start"); i++) {
			calendarData = new DateDataDto(null, null, null, null, null);
			dateList.add(calendarData);
		}

		// ?????? ??????
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if (i == today_info.get("today")) {
				calendarData = new DateDataDto(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "today");
			} else {
				calendarData = new DateDataDto(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		// ?????? ?????? ??? ???????????? ??????
		int index = 7 - dateList.size() % 7;
		if (dateList.size() % 7 != 0) {
			for (int i = 0; i < index; i++) {
				calendarData = new DateDataDto(null, null, null, null, null);
				dateList.add(calendarData);
			}
		}

		List<ScheduleDetailDto> sddList = new ArrayList<ScheduleDetailDto>(); //

		List<ScheduleDto> sdList = service.read(userNum); // DB?????????

		for (int i = 0; i < service.read(userNum).size(); i++) {
			Date date = service.read(userNum).get(i).getDay();

			SimpleDateFormat user_year = new SimpleDateFormat("yyyy");
			SimpleDateFormat user_month = new SimpleDateFormat("MM");
			SimpleDateFormat user_date = new SimpleDateFormat("dd");

			String year = user_year.format(date);
			int int_month = Integer.parseInt(user_month.format(date)) - 1;
			String month = Integer.toString(int_month);
			int int_day = Integer.parseInt(user_date.format(date));
			String day = Integer.toString(int_day);

			String dtsd = "<a href=\"./editSchedule?scNum=" + service.read(userNum).get(i).getScNum()
					+ "\" onclick=\"window.open(this.href, '_blank', 'width=600, height=500'); return false;\">"
					+ sdList.get(i).getSchedule() + "</a>";

			schdto = new ScheduleDetailDto(service.read(userNum).get(i).getScNum(), userNum, year, month, day, dtsd);
			sddList.add(schdto);
		}

		// ???, ???, ??? ???????????? ??? ????????? ????????? ??????
		for (int i = 0; i < sddList.size(); i++) {
			for (int j = i + 1; j < sddList.size(); j++) {
				String dtsd = "";
				try {
					dtsd += sddList.get(i).getSchedul_detail();
					if (sddList.get(i).getDay().equals(sddList.get(j).getDay())
							&& sddList.get(i).getYear().equals(sddList.get(j).getYear())
							&& sddList.get(i).getMonth().equals(sddList.get(j).getMonth())) {
						if (j <= sddList.size()) {
							dtsd += "<br>" + sddList.get(j).getSchedul_detail();
						}

						schdto = new ScheduleDetailDto(service.read(userNum).get(i).getScNum(), userNum,
								sddList.get(i).getYear(), sddList.get(i).getMonth(), sddList.get(i).getDay(), dtsd);
						nullList2 = new ScheduleDto(service.read(userNum).get(i).getScNum(), userNum,
								sdList.get(i).getDay(), dtsd);

						sddList.remove(i);
						sdList.remove(i);

						sddList.add(i, schdto);
						sdList.add(i, nullList2);

						sddList.remove(i + 1);
						sdList.remove(i + 1);

						i = 0;
						j = i + 1;
						dtsd = "";

						break;

					} else {
						sddList.get(i).setSchedul_detail(dtsd);
						dtsd = "";
						continue;
					}
				} catch (Exception e) {
					System.out.println(e);
				}

				dtsd = "";
			}

		}

		// sdd??? ?????? ???????????? ????????? dbteList ????????? ????????? setSchedule_detail
		for (int i = 0; i < sddList.size(); i++) {
			for (int j = 0; j < dateList.size(); j++) {
				if (sddList.get(i).getDay().equals(dateList.get(j).getDate())
						&& sddList.get(i).getMonth().equals(dateList.get(j).getMonth())
						&& sddList.get(i).getYear().equals(dateList.get(j).getYear())) {
					dateList.get(j).setSchedule_detail(sddList.get(i).getSchedul_detail());
				}
			}
		}

		model.addAttribute("username", userNum);

		// ????????? ??????
		model.addAttribute("dateList", dateList); // ?????? ????????? ??????
		model.addAttribute("today_info", today_info);
		return "user/schedule/schedule";
	}
}
