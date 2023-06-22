package org.jsp.coaching.dao;

import org.jsp.coaching.dto.Student;
import org.jsp.coaching.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {
	@Autowired
	StudentRepository studentRepository;

	public void signup(Student student) {
		studentRepository.save(student);
	}

	public Student findByEmail(String email) {
		return studentRepository.findByEmail(email);
	}

}
