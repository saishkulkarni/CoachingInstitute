package org.jsp.coaching.repository;

import org.jsp.coaching.dto.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
	Student findByEmail(String email);

}
