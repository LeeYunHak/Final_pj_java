package com.myapp.user;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myapp.company.job.posting.CompanyJobPosting;

@Mapper
public interface UserMapper {

	// 구직자 회원가입
	@Insert("insert into user(user_id, user_name, user_email, user_password, user_phone)"
			+ " values(#{userId}, #{userName}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	
	// 구직자 로그인 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@Select("select user_email, user_password from user "
			+ "where user_email = #{userEmail} and user_password = #{userPassword}")
	public User loginUser(@Param("userEmail") String userEmail,@Param("userPassword") String userPassword);
	
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
	@Select("select cj.company_job_posting_image_number, c.company_name, c.company_country ,cj.company_job_posting_period_end "
			+ "from company_job_posting cj join company c on cj.company_job_posting_number = c.company_job_posting_number")
	public List<CompanyJobPosting> selectCompany(); 
}
