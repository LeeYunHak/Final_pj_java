package com.myapp.company;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.user.User;

@Service
public class CompanyService {

	// companyMapper 자동 변수
	@Autowired
	CompanyMapper companyMapper;
	
	// 로그인 전 - 채용담당자(기업) 가입[삽입] - 회사정보도같이 등록
	public Company joinCompanyInsert(Company company) {
		int row = companyMapper.joinCompany(company);
		
		if(row == 1) {
			return new Company(company.getCompanyId(), company.getCompanyEmail(),
					company.getCompanyPassword(), company.getCompanyName(),
					company.getCompanyRegistrationNumber(), company.getCompanyAddress(),
					company.getCompanySales(), company.getCompanyEmployeeNumber(),
					company.getCompanyEstablishmentYear(), company.getCompanyIntroduce(),
					company.getCompanyPhone());
		}else {
			return null;
		}
	}
	
	// 로그인 전 - 채용담당자 로그인[조회](이메일, 비밀번호 둘다 입력)
	public Company loginCompanySelect(String companyEmail, String companyPassword) {
		return companyMapper.joinCompanyEmailPassword(companyEmail, companyPassword);
	}
	
	
	///////////////////////////////////////////////////////////////////
	// 로그인 후 - 회사정보(기업) 수정[업뎃] - 비번수정[업뎃] 제외
	public Company updateCompanyUpdate(Company company) {
		Company row = companyMapper.updateCompany(company);
//		if()
		return null;
	}

	// 로그인 후 - 회사정보(기업) 비번수정[업뎃]
//	loginCompanyUpdatePasswordByEmail
	
	// 로그인 후 - 채용담당자(기업) 탈퇴[삭제]
//	loginCompanydelete
	
}