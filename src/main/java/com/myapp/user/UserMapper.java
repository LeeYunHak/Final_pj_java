package com.myapp.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface UserMapper {
	
	// 구직자 회원가입
	@Insert("insert into user(user_id, user_name, user_email, user_password, user_phone)"
			+ " values(#{userId}, #(userName}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	
	// 구직자 로그인
	@Insert("insert into user(user_email, user_password) values(#{userEmail}, #{userPassword})")
	public int loginUser(User user);
	
	// 아이디 찾기
	@Insert("insert into user(user_name, user_phone) values(#{userName}, #{userPhone})")
	public int idFindUser(User user);

	// 비밀번호 찾기
	@Insert("insert into user(user_email) values(#{userEmail})")
	public int pwFindUser(User user);
	
}
