package org.jsp.coaching.repository;

import org.jsp.coaching.dto.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Integer> {
	Course findByCourseName(String name);
}
