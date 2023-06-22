package org.jsp.coaching.repository;

import org.jsp.coaching.dto.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

	Admin findByEmail(String email);


}
