package com.myapp.user;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;

	// 구직자 회원가입
	public User joinUserInsert(User user) {
		int row = userMapper.joinUser(user);
		if (row == 1) {
			return new User(user.getUserId(), null, null, user.getUserEmail(), user.getUserPassword(),
					user.getUserPhone(), null, null, null, null, 0, 0);
		} else {
			return null;
		}
	}

	// 구직자 로그인
	public User loginUserSelect(String userEmail, String userPassword) {
		return userMapper.loginUser(userEmail, userPassword);
	}

	// 아이디 찾기
	public User idFindUserSelect(String userName, String userPhone) {
		return userMapper.idFindUser(userName, userPhone);
	}

	// 비밀번호 찾기
	public User pwFindUserSelect(String userEmail) {
		return userMapper.pwFindUser(userEmail);
	}
}
