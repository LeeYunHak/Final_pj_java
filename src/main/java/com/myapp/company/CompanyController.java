package com.myapp.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	CompanyService companyService;
	
	@GetMapping("/MainBefore")
	public String main() {
		return "companyMainBeforePage";
	}
	
	// 채용담당자 가입
	@GetMapping("")
	public String showJoinCompany() {
		return "joinCompanyPage";
	}
	@PostMapping("joinCompany")
	public String joinCompany(Model model, Company company) {
		Company joinCompany = CompanyService.joinCompanyInsert(company);
		
		model.addAttribute("joinCompany", joinCompany);
	}
	
	// 채용담당자 로그인
	
}
