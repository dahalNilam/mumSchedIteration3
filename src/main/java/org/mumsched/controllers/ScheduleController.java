package org.mumsched.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.mumsched.domain.Entry;
import org.mumsched.domain.Schedule;
import org.mumsched.service.EntryService;
import org.mumsched.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/schedule")
public class ScheduleController {
	@Autowired
	ScheduleService scheduleService;
	@Autowired
	EntryService entryService;

	@RequestMapping(value={"/add"}, method=RequestMethod.GET)
	public String getForm(@ModelAttribute("newSchedule")Schedule schedule, Model model) {
		List<String> entryList = entryService.getAllEntry()
				.stream()
				.map(Entry::getEname)
				.collect(Collectors.toList());

		model.addAttribute("entryList", entryList);
		List<Schedule> scheduleList = scheduleService.getAllSchedule();
		model.addAttribute("scheduleList", scheduleList);
		return "scheduleAddForm";
	}

	@RequestMapping(value={"/add"}, method=RequestMethod.POST)
	public String save(@ModelAttribute("newSchedule") @Validated Schedule scheduleObj, BindingResult result, Model model ) {
		if(result.hasErrors()) {
			return "scheduleAddForm";
		} else {
			scheduleService.save(scheduleObj);
			return "redirect:/schedule/add";
		}
	}

	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id) {
		scheduleService.delete(id);
		return "redirect:/schedule/add";
	}

	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable Long id, Model model) {
		System.out.println("I was here");
		model.addAttribute("schedule", scheduleService.getScheduleById(id));
		return "editScheduleForm";
	}
}
