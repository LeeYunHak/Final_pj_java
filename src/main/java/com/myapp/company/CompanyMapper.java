package com.myapp.company;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CompanyMapper {

	// 채용담장자 가입
	@Insert("insert into company(company_id, company_name, company_country, "
			+ " company_password, company_address, company_registration_number,"
			+ "  company_sales, company_employee_number, company_introduce,"
			+ " company_establishment_year, company_phone, company_email)"
			
			
			
			
			
			+ " values(#{companyId, company_mainImage, companyName, companyEmail,"
			+ " companyPassword, companyAddress, companyPhone, companyRegistrationNumber,"
			+ " companyCountry, companySales, companyEmployeeNumber, companyIntroduce,"
			+ " companyEstablishmentYear})")
	@Options(useGeneratedKeys = true, keyProperty = "companyId")
	public int joinCompany(Company company);

	// 기업 로그인
//	@Select("")
	
	
	// 
	
}