package org.jsp.coaching.service;

import java.util.ArrayList;
import java.util.List;

import org.jsp.coaching.dao.StudentDao;
import org.jsp.coaching.dto.Course;
import org.jsp.coaching.dto.Student;
import org.jsp.coaching.helper.Login;
import org.jsp.coaching.repository.CourseRepository;
import org.jsp.coaching.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class StudentService {

	@Autowired
	StudentDao studentDao;

	@Autowired
	CourseRepository courseRepository;

	@Autowired
	StudentRepository studentRepository;

	public ModelAndView signup(Student student) {
		ModelAndView view = new ModelAndView();
		if (studentDao.findByEmail(student.getEmail()) == null) {
			studentDao.signup(student);
			view.setViewName("/index");
			view.addObject("pass", "Account Registered Successfully");
		} else {
			view.setViewName("/StudentSignup");
			view.addObject("fail", "Email or Phone Number already exists");
		}
		return view;

	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();

		Student student = studentDao.findByEmail(login.getEmail());

		if (student == null) {
			view.setViewName("/StudentLogin");
			view.addObject("fail", "Invalid Email");
		} else {
			if (student.getPassword().equals(login.getPassword())) {
				session.setAttribute("student", student);
				view.setViewName("/index");
				view.addObject("pass", "Login Success");
			} else {
				view.setViewName("/StudentLogin");
				view.addObject("fail", "Invalid Password");
			}
		}

		return view;
	}

	public ModelAndView viewCourse(HttpSession session) {
		ModelAndView view = new ModelAndView();

		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			view.setViewName("/index");
			view.addObject("fail", "First Login to View Courses");
		} else {
			List<Course> list = courseRepository.findAll();
			if (list.isEmpty()) {
				view.setViewName("/index");
				view.addObject("fail", "No Course Found Yet");
			} else {
				view.setViewName("/StudentCourseDisplay");
				view.addObject("list", list);
			}
		}
		return view;
	}

	public ModelAndView addCourse(int id, HttpSession session) {
		ModelAndView view = new ModelAndView();
		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			view.setViewName("/index");
			view.addObject("fail", "Session Expired");
		} else {
			Course course = courseRepository.findById(id).orElse(null);
			List<String> list = student.getCourseOpted();
			if (list == null) {
				list = new ArrayList<>();
			}
			list.add(course.getCourseName());

			student.setCourseOpted(list);
			studentRepository.save(student);
			
			view.setViewName("/index");
			view.addObject("pass", "Enrolled Success");	
		}

		return view;
	}

}
