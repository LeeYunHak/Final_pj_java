package com.myapp.user;

public class User {
	private int userId; //회원번호
	private String userProfileImage; //회원프로필사진
	private String userEmail; //회원이메일(아이디)
	private String userPassword; //회원비밀번호
	private String userPhone; //회원연락처
	private String userJobGroup; //전문분야 직군
	private String userJob; //전문분야 직업
	private String userCareer; //경력(작품개수)
	private String resumeTitle; //이력서제목
	private int wishNumber; //찜하기번호
	private int bookmarkNumber; //북마크번호

	public User(int userId, String userProfileImage, String userEmail, String userPassword, String userPhone,
			String userJobGroup, String userJob, String userCareer, String resumeTitle, int wishNumber,
			int bookmarkNumber) {
		super();
		this.userId = userId;
		this.userProfileImage = userProfileImage;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
		this.userJobGroup = userJobGroup;
		this.userJob = userJob;
		this.userCareer = userCareer;
		this.resumeTitle = resumeTitle;
		this.wishNumber = wishNumber;
		this.bookmarkNumber = bookmarkNumber;
	}

	public User() {}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserProfileImage() {
		return userProfileImage;
	}

	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserJobGroup() {
		return userJobGroup;
	}

	public void setUserJobGroup(String userJobGroup) {
		this.userJobGroup = userJobGroup;
	}

	public String getUserJob() {
		return userJob;
	}

	public void setUserJob(String userJob) {
		this.userJob = userJob;
	}

	public String getUserCareer() {
		return userCareer;
	}

	public void setUserCareer(String userCareer) {
		this.userCareer = userCareer;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	public int getWishNumber() {
		return wishNumber;
	}

	public void setWishNumber(int wishNumber) {
		this.wishNumber = wishNumber;
	}

	public int getBookmarkNumber() {
		return bookmarkNumber;
	}

	public void setBookmarkNumber(int bookmarkNumber) {
		this.bookmarkNumber = bookmarkNumber;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userProfileImage=" + userProfileImage + ", userEmail=" + userEmail
				+ ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userJobGroup=" + userJobGroup
				+ ", userJob=" + userJob + ", userCareer=" + userCareer + ", resumeTitle=" + resumeTitle
				+ ", wishNumber=" + wishNumber + ", bookmarkNumber=" + bookmarkNumber + "]";
	}
}
