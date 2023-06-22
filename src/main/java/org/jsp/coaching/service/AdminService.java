package org.jsp.coaching.service;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.jsp.coaching.dao.AdminDao;
import org.jsp.coaching.dto.Admin;
import org.jsp.coaching.dto.Course;
import org.jsp.coaching.helper.Login;
import org.jsp.coaching.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class AdminService {

	@Autowired
	AdminDao adminDao;

	@Autowired
	CourseRepository courseRepository;

	public ModelAndView signup(Admin admin) {
		ModelAndView view = new ModelAndView();

		if (adminDao.findByEmail(admin.getEmail()) == null) {
			adminDao.signup(admin);
			view.setViewName("/AdminLogin");
			view.addObject("pass", "Account Registered Successfully");
		} else {
			view.setViewName("/AdminSignup");
			view.addObject("fail", "Email already exists");
		}
		return view;

	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();

		Admin admin = adminDao.findByEmail(login.getEmail());

		if (admin == null) {
			view.setViewName("/AdminLogin");
			view.addObject("fail", "Invalid Email");
		} else {
			if (admin.getPassword().equals(login.getPassword())) {
				session.setAttribute("admin", admin);
				view.setViewName("/AdminDashboard");
				view.addObject("pass", "Login Success");
			} else {
				view.setViewName("/AdminLogin");
				view.addObject("fail", "Invalid Password");
			}
		}

		return view;
	}

	public ModelAndView addCourse(ModelAndView view, Course course, MultipartFile pic) throws IOException {

		if (courseRepository.findByCourseName(course.getCourseName()) == null) {
			
			byte[] image=new byte[pic.getInputStream().available()];
			pic.getInputStream().read(image);
			course.setImage(image);
			
			courseRepository.save(course);
			view.setViewName("/AdminDashboard");
			view.addObject("pass", "Course added success");
		} else {
			view.setViewName("/AdminDashboard");
			view.addObject("fail", "" + course.getCourseName() + " Already Exists");
		}
		return view;

	}

	public ModelAndView viewCourse() {
		ModelAndView view = new ModelAndView();

		List<Course> list = courseRepository.findAll();
		if (list.isEmpty()) {
			view.setViewName("/AdminDashboard");
			view.addObject("fail", "No Course Found Yet");
		} else {
			view.setViewName("/CourseList");
			view.addObject("list", list);
		}
		return view;
	}

	public ModelAndView updateCourse(Course course1) {
		ModelAndView view = new ModelAndView();

		Optional<Course> op = courseRepository.findById(course1.getId());
		if (op.isEmpty()) {
			view.addObject("fail", "Invalid Id");
			view.setViewName("/AdminDashboard");
		} else {
			Course course = op.get();
			course1.setImage(course.getImage());
			
			courseRepository.save(course1);
			view.addObject("pass", "Updated Successfully");
			view.setViewName("/AdminDashboard");
		}

		return view;

	}

	public ModelAndView deleteCourse(int id) {
		ModelAndView view = new ModelAndView();

		Optional<Course> op = courseRepository.findById(id);
		if (op.isEmpty()) {
			view.addObject("fail", "Invalid Id");
			view.setViewName("/AdminDashboard");
		} else {
			courseRepository.deleteById(id);
			view.addObject("pass", "Course Deleted Successfully");
			view.setViewName("/AdminDashboard");

		}

		return view;
	}

}
