package org.jsp.coaching.controller;

import java.io.IOException;

import org.jsp.coaching.dto.Admin;
import org.jsp.coaching.dto.Course;
import org.jsp.coaching.helper.Login;
import org.jsp.coaching.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	@GetMapping("/")
	public ModelAndView homePage(ModelAndView view) {
		view.setViewName("/index");
		return view;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session, ModelAndView view) {
		session.invalidate();
		view.setViewName("/index");
		view.addObject("pass", "Logout Success");
		return view;
	}

	@PostMapping("/admin/signup")
	public ModelAndView signup(@ModelAttribute Admin admin) {
		return adminService.signup(admin);
	}

	@PostMapping("/admin/login")
	public ModelAndView signup(@ModelAttribute Login login, HttpSession session) {
		return adminService.login(login, session);
	}

	@PostMapping("/admin/course")
	public ModelAndView insertCourse(ModelAndView view, @ModelAttribute Course course,@RequestParam MultipartFile pic) throws IOException {
		return adminService.addCourse(view, course,pic);
	}

	@GetMapping("/admin/viewcourse")
	public ModelAndView viewCourse() {
		return adminService.viewCourse();
	}

	@PostMapping("/admin/course/update")
	public ModelAndView updateCourse(@ModelAttribute Course course) {
		return adminService.updateCourse(course);
	}

	@PostMapping("/admin/course/delete")
	public ModelAndView deleteCourse(@RequestParam int id) {
		return adminService.deleteCourse(id);
	}

}
