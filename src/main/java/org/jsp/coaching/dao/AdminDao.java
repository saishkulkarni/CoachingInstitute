package org.jsp.coaching.dao;

import org.jsp.coaching.dto.Admin;
import org.jsp.coaching.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

	@Autowired
	AdminRepository adminRepository;

	public void signup(Admin admin) {
		adminRepository.save(admin);
	}

	public Admin findByEmail(String email) {
		return adminRepository.findByEmail(email);
	}

}
