package com.myapp.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.company.job.posting.CompanyJobPosting;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	// 구직자 회원가입
	public User joinUserInsert(User user) {
		int row = userMapper.joinUser(user);
		if (row == 1) {
			return new User(user.getUserId(), null, user.getUserName(), user.getUserEmail(), user.getUserPassword(), user.getUserPhone(), null, null, null, null, 0, 0);
		} else {
			return null;
		}
	}
	// 아이디 중복체크
	public int idCheck(String userEmail) {
		return userMapper.idCheck(userEmail);
	}

	// 구직자 로그인
	public User loginUserSelect(String userEmail, String userPassword) {
		return userMapper.loginUser(userEmail, userPassword);
	}

	// 아이디 찾기
	public User idFindUserSelect(String userName, String userPhone) {
		return userMapper.idFindUser(userName, userPhone);
	}

	// 비밀번호!!!!!!!!!!!!!
	// 찾을 비밀번호 url전송
	public User pwFindUserSelect(String userEmail) {
		return userMapper.pwFindUserSend(userEmail);
	}
	// url전송된 비밀번호 설정
	public User pwFindUserUpdate(User user) {
		int row = userMapper.pwFindUserReceiveByUserEmail(user);
		if (row == 1) {
			return new User(0, null,null, user.getUserEmail(), user.getUserPassword(), null, null, null, null, null, 0, 0);
		} else {
			return null;
		}
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 로그인 후 페이지(탐색창) 구인글 리스트
	public List<CompanyJobPosting> mainCompanyJobPostingList(){
		return userMapper.selectCompany();
	}
}
