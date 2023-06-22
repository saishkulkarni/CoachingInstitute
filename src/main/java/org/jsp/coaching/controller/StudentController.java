package org.jsp.coaching.controller;

import org.jsp.coaching.dto.Student;
import org.jsp.coaching.helper.Login;
import org.jsp.coaching.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;

	@PostMapping("/student/signup")
	public ModelAndView signup(@ModelAttribute Student student) {
		return studentService.signup(student);
	}

	@PostMapping("/student/login")
	public ModelAndView signup(@ModelAttribute Login login, HttpSession session) {
		return studentService.login(login, session);
	}

	@GetMapping("/student/viewcourse")
	public ModelAndView viewCourse(HttpSession session) {
		return studentService.viewCourse(session);
	}

	@GetMapping("/student/course/add")
	public ModelAndView addCourse(@RequestParam int id,HttpSession session)
	{
		return studentService.addCourse(id,session);
	}
}
