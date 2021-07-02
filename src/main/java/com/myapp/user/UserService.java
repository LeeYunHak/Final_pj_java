package com.myapp.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.application.Application;
import com.myapp.bookmark.Bookmark;
import com.myapp.companyJobPosting.CompanyJobPosting;
import com.myapp.jobPostingList.JobPostingList;

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
	public List<JobPostingList> mainCompanyJobPostingList(){
		return userMapper.selectCompany();
	}
	// 로그인 후 페이지(탐색창) 직종 선택 후 구인글 조회
	public List<JobPostingList> jobGroupCompanyJobPostingList(String companyJobPostingJobGroup){
		return userMapper.selectCompanyJobGroup(companyJobPostingJobGroup);
	}
	// 로그인 후 페이지(탐색창) 세부직무 선택 후 구인글 조회
	public List<JobPostingList> detailJobCompanyJobPostingList(String companyJobPostingJob){
		return userMapper.selectCompanyDetailJob(companyJobPostingJob);
	}
	// 로그인 후 페이지(탐색창) 경력(작품개수) 선택 후 구인글 조회
	public List<JobPostingList> careerCompanyJobPostingList(String companyJobPostingCareer){
		return userMapper.selectCompanyCareer(companyJobPostingCareer);
	}
	// 로그인 후 페이지(탐색창) 지역 선택 후 구인글 조회
	public List<JobPostingList> countryCompanyJobPostingList(String companyCountry){
		return userMapper.selectCompanyCountry(companyCountry);
	}
	// 로그인 후 페이지(탐색창) 상세 지역 선택 후 구인글 조회
	public List<JobPostingList> detailCountryCompanyJobPostingList(String companyDetailCountry){
		return userMapper.selectCompanyDetailCountry(companyDetailCountry);
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 마이드리머 지원 목록 조회를 위한 소스
//	public List<Application> mydreamerApplicationList(String userEmail){
//		return userMapper.selectApplication(userEmail);
//	}
//
//	// 마이드리머 북마크 조회를 위한 소스
//	public List<Bookmark> mydreamerBookmarkList(String userEmail){
//		return userMapper.selectBookmark(userEmail);
//	}
	
	// 회원정보 수정하기
	public User selectUserProfile(String userEmail) {
		return userMapper.selectProfile(userEmail);
	}
	public User userProfileEdit(User user) {
		int row = userMapper.updateProfile(user);
		if(row == 1) {
			return new User(user.getUserId(), user.getUserProfileImage(), user.getUserName(), user.getUserEmail(), user.getUserPassword(), user.getUserPhone(), 
					user.getUserJobGroup(), user.getUserJob(), user.getUserCareer(), user.getResumeTitle(), user.getWishNumber(), user.getbookmarkId());
		}else {
			return null;
		}
	}
	
	// 전문분야 설정하기
	public User professionalSet(User user) {
		int row = userMapper.updateProfessional(user);
		if(row == 1) {
			return new User(user.getUserId(), user.getUserProfileImage(), user.getUserName(), user.getUserEmail(), user.getUserPassword(), user.getUserPhone(), 
					user.getUserJobGroup(), user.getUserJob(), user.getUserCareer(), user.getResumeTitle(), user.getWishNumber(), user.getbookmarkId());
		}else {
			return null;
		}
	}
	
	// 회원 탈퇴하기 (이메일과 비밀번호가 일치할 때 탈퇴 가능)
	public boolean userDelete(String userEmail, String userPassword) {
		int row = userMapper.deleteUser(userEmail, userPassword);
		if(row == 1) {
			return true;
		}else {
			return false;
		}
	}
}
