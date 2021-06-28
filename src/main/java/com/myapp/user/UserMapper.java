package com.myapp.user;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.myapp.company.job.posting.CompanyJobPosting;

@Mapper
public interface UserMapper {

	// 구직자 회원가입
	@Insert("insert into user(user_id, user_name, user_email, user_password, user_phone)"
			+ " values(#{userId}, #{userName}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	// 아이디 중복체크
	@Select("select count(*) from user where user_email = #{userEmail}")
	public int idCheck(String userEmail);
	
	// 구직자 로그인 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@Select("select * from user "
			+ "where user_email = #{userEmail} and user_password = #{userPassword}")
	public User loginUser(@Param("userEmail") String userEmail,@Param("userPassword") String userPassword);
	
	// 아이디 찾기
	@Select("select user_email from user "
			+ "where user_name = #{userName} and user_phone = #{userPhone}")
	public User idFindUser(@Param("userName") String userName, @Param("userPhone") String userPhone);

	// 비밀번호!!!!!!!!!!!!!
	// 찾을 비밀번호 url전송
	@Select("select  user_password,user_email from user where user_email=#{userEmail}")
	public User pwFindUserSend(String userEmail);
	// url전송된 비밀번호 설정
	@Update("update user set user_password=#{userPassword} where user_email=#{userEmail} ")
	public int pwFindUserReceiveByUserEmail(User user);
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 로그인 후 메인페이지(탐색페이지)
	// 기업구인글 목록이 쫘르르르르륵
	@Select("select * from company_job_posting cj join company c on cj.company_job_posting_number = c.company_job_posting_number")
	public List<CompanyJobPosting> selectCompany(); 
}
