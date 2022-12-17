package com.johnathonbowers.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@PostMapping("/create")
	public String createOmikuji(
			@RequestParam(value = "numberSelect") int numberSelect,
			@RequestParam(value = "cityName") String cityName,
			@RequestParam(value = "personName") String personName,
			@RequestParam(value = "professionOrHobby") String professionOrHobby,
			@RequestParam(value = "livingThing") String livingThing,
			@RequestParam(value = "somethingNice") String somethingNice,
			HttpSession session
			) {
		session.setAttribute("numberSelect", numberSelect);
		session.setAttribute("cityName", cityName);
		session.setAttribute("personName", personName);
		session.setAttribute("professionOrHobby", professionOrHobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("somethingNice", somethingNice);
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/show")
	public String showOmikuji(HttpSession session, Model model) {
		int numberSelect = (int) session.getAttribute("numberSelect");
		String cityName = (String) session.getAttribute("cityName");
		String personName = (String) session.getAttribute("personName");
		String professionOrHobby = (String) session.getAttribute("professionOrHobby");
		String livingThing = (String) session.getAttribute("livingThing");
		String somethingNice = (String) session.getAttribute("somethingNice");
		model.addAttribute("numberSelect", numberSelect);
		model.addAttribute("cityName", cityName);
		model.addAttribute("personName", personName);
		model.addAttribute("professionOrHobby", professionOrHobby);
		model.addAttribute("livingThing", livingThing);
		model.addAttribute("somethingNice", somethingNice);
		return "show.jsp";
	}
}
