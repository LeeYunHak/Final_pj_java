package com.myapp.user;

public class User {
	private int userId;
	private String userProfileImage;
	private String userEmail;
	private String userPassword;
	private String userPhone;
	private String userJobGroup;
	private String userJob;
	private String userCareer;
	private String resumeTitle;
	private int wishNumber;
	private int bookmarkNumber;

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
