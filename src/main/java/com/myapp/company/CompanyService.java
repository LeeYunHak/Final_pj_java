package com.myapp.company;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.user.User;

@Service
public class CompanyService {

	@Autowired
	CompanyMapper companyMapper;
	
	@Test
	public void test() {
//		System.out.println(companyMapper);
	}

	// 기업 회원가입
	public Company joinCompanyInsert(Company company) {
		
		int row = companyMapper.joinCompany(company);
		
		if(row == 1) {
			return new Company(company.getCompanyId(), company.getC);
		}else {
			return null;
		}
	}
	
	// 채용담당자 로그인
	public Company loginSelect
			
	// 
	
	//
}