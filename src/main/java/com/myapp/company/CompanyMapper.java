package com.myapp.company;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CompanyMapper {

	// 채용담당자 가입
	@Insert("insert into company(company_id, company_email, company_password,"
			+ " company_name, company_registration_number, company_address,"
			+ " company_sales, company_employee_number, company_establishment_year,"
			+ " company_introduce, company_phone) "
			
			+ " values(0, #{companyEmail}, #{companyPassword}, #{companyName},"
			+ " #{companyRegistrationNumber}, #{companyAddress}, #{companySales},"
			+ " #{companyEmployeeNumber}, #{companyEstablishmentYear},"
			+ " #{companyIntroduce}, #{companyPhone})")
//	@Options(useGeneratedKeys = true, keyProperty = "companyId")
	public int joinCompany(Company company);

	// 채용담당자 로그인
//	@Select("select company_email from company where company_email=#{companyEmail}") //회사 이메일(로그인 아이디) 입력
//	public String joinCompanyEmail(Company company);
//	@Select("select company_password from company where company_password=#{companyPassword}") //회사 비밀번호 입력
//	public String joinCompanyPassword(Company company);

	// 채용담당자 로그인(이메일, 비밀번호 둘다 입력)
	@Select("select company_password, company_password from company"
			+ " where company_email=#{companyEmail} and company_password=#{companyPassword}")
	public Company joinCompanyEmailPassword(String companyEmail, String companyPassword);
	
	// 
	
}