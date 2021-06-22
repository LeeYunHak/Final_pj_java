package com.myapp.user;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.myapp.company.Company;
import com.myapp.company.job.posting.CompanyJobPosting;

@Mapper
public interface UserMapper {

	// 구직자 회원가입
	@Insert("insert into user(user_id, user_name, user_email, user_password, user_phone)"
			+ " values(#{userId}, #(userName}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	
	// 구직자 로그인
	@Select("select user_email, user_password from user "
			+ "where user_email = #{userEmail} and where user_password = #{userPassword}")
	public User loginUser(String userEmail, String userPassword);
	
	// 아이디 찾기
	@Select("select user_name, user_phone from user "
			+ "where user_name = #{userName} and where user_phone = #{userPhone}")
	public User idFindUser(String userName, String userPhone);

	// 비밀번호 찾기
	@Select("select user_email from user where user_email = #{userEmail}")
	public User pwFindUser(String userEmail);
	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 로그인 후 메인페이지(탐색페이지)
	// 기업구인글 목록이 쫘르르르르륵
	@Select("select company_job_posting_image, company_job_posting_period_end from company_job_posting")
	public CompanyJobPosting selectCompany(); 
}
