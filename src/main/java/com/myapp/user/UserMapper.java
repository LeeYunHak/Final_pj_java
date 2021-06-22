package com.myapp.user;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface UserMapper {
	
	// 구직자 회원가입
	@Insert("insert into user(user_id, user_email, user_password, user_phone)"
			+ " values(#{userId}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	
	
}
