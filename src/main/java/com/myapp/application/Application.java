package com.myapp.application;

import java.time.LocalDate;

public class Application {
	private int companyId; // 기업번호(기본키, auto_increment)
	private String companyEmail; // 기업이메일(아이디)
	private String companyPassword; // 기업비밀번호
	private String companyName; // 기업이름
	private int companyRegistrationNumber; // 사업자등록번호
	private String companyAddress; // 기업주소
	private int companySales; // 기업매출액
	private int companyEmployeeNumber; // 직원수
	private LocalDate companyEstablishmentYear; // 설립연도
	private String companyIntroduce; // 기업소개
	private String companyPhone; // 기업연락처
	private int companyImageNumber; // 기업 대표 사진
	private int companyJobPostingId; // 기업이 작성한 구인글 번호
	private String companyCountry; // 기업 지역
	private String companyDetailCountry; // 기업 세부지역
	private String companyJobPostingTitle; // 구인글 제목
	private String companyJobPostingImageNumber; // 구인글이미지
	private String companyJobPostingIntroduce; // 구인회사소개(타입text)
	private String companyJobPostingManager; // 채용담당자
	private int companyJobPostingRecruitment; // 모집인원
	private LocalDate companyJobPostingPeriodStart; // 모집 시작일
	private LocalDate companyJobPostingPeriodEnd; // 모집 마감일
	private String companyJobPostingManagerPhone; // 담당자 연락처
	private String companyJobPostingManagerEmail; // 담당자 이메일
	private String companyJobPostingQr; // 자격요건
	private String companyJobPostingPreference; // 우대사항
	private String companyJobPostingWelfare; // 혜택 및 복지
	private String companyJobPostingJobGroup; // 모집분야 직종
	private String companyJobPostingJob; // 모집분야 직종의 세부직무
	private String companyJobPostingCareer; // 모집분야 경력(작품개수)
	private int bookmarkId; // 북마크 번호
	private int applicationId; // 지원 번호
	private int userId; // 회원번호
	private String userProfileImage; // 회원프로필사진
	private String userName; // 회원이름
	private String userEmail; // 회원이메일(아이디)
	private String userPassword; // 회원비밀번호
	private String userPhone; // 회원연락처
	private String userJobGroup; // 전문분야 직군
	private String userJob; // 전문분야 직업
	private String userCareer; // 경력(작품개수)
	private String resumeTitle; // 이력서제목
	private int wishNumber; // 찜하기번호
	private LocalDate applicationDate;

	public Application(int companyId, String companyEmail, String companyPassword, String companyName,
			int companyRegistrationNumber, String companyAddress, int companySales, int companyEmployeeNumber,
			LocalDate companyEstablishmentYear, String companyIntroduce, String companyPhone, int companyImageNumber,
			int companyJobPostingId, String companyCountry, String companyDetailCountry, String companyJobPostingTitle,
			String companyJobPostingImageNumber, String companyJobPostingIntroduce, String companyJobPostingManager,
			int companyJobPostingRecruitment, LocalDate companyJobPostingPeriodStart,
			LocalDate companyJobPostingPeriodEnd, String companyJobPostingManagerPhone,
			String companyJobPostingManagerEmail, String companyJobPostingQr, String companyJobPostingPreference,
			String companyJobPostingWelfare, String companyJobPostingJobGroup, String companyJobPostingJob,
			String companyJobPostingCareer, int bookmarkId, int applicationId, int userId, String userProfileImage,
			String userName, String userEmail, String userPassword, String userPhone, String userJobGroup,
			String userJob, String userCareer, String resumeTitle, int wishNumber, LocalDate applicationDate) {
		super();
		this.companyId = companyId;
		this.companyEmail = companyEmail;
		this.companyPassword = companyPassword;
		this.companyName = companyName;
		this.companyRegistrationNumber = companyRegistrationNumber;
		this.companyAddress = companyAddress;
		this.companySales = companySales;
		this.companyEmployeeNumber = companyEmployeeNumber;
		this.companyEstablishmentYear = companyEstablishmentYear;
		this.companyIntroduce = companyIntroduce;
		this.companyPhone = companyPhone;
		this.companyImageNumber = companyImageNumber;
		this.companyJobPostingId = companyJobPostingId;
		this.companyCountry = companyCountry;
		this.companyDetailCountry = companyDetailCountry;
		this.companyJobPostingTitle = companyJobPostingTitle;
		this.companyJobPostingImageNumber = companyJobPostingImageNumber;
		this.companyJobPostingIntroduce = companyJobPostingIntroduce;
		this.companyJobPostingManager = companyJobPostingManager;
		this.companyJobPostingRecruitment = companyJobPostingRecruitment;
		this.companyJobPostingPeriodStart = companyJobPostingPeriodStart;
		this.companyJobPostingPeriodEnd = companyJobPostingPeriodEnd;
		this.companyJobPostingManagerPhone = companyJobPostingManagerPhone;
		this.companyJobPostingManagerEmail = companyJobPostingManagerEmail;
		this.companyJobPostingQr = companyJobPostingQr;
		this.companyJobPostingPreference = companyJobPostingPreference;
		this.companyJobPostingWelfare = companyJobPostingWelfare;
		this.companyJobPostingJobGroup = companyJobPostingJobGroup;
		this.companyJobPostingJob = companyJobPostingJob;
		this.companyJobPostingCareer = companyJobPostingCareer;
		this.bookmarkId = bookmarkId;
		this.applicationId = applicationId;
		this.userId = userId;
		this.userProfileImage = userProfileImage;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
		this.userJobGroup = userJobGroup;
		this.userJob = userJob;
		this.userCareer = userCareer;
		this.resumeTitle = resumeTitle;
		this.wishNumber = wishNumber;
		this.applicationDate = applicationDate;
	}

	public Application() {
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCompanyEmail() {
		return companyEmail;
	}

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public String getCompanyPassword() {
		return companyPassword;
	}

	public void setCompanyPassword(String companyPassword) {
		this.companyPassword = companyPassword;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public int getCompanyRegistrationNumber() {
		return companyRegistrationNumber;
	}

	public void setCompanyRegistrationNumber(int companyRegistrationNumber) {
		this.companyRegistrationNumber = companyRegistrationNumber;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public int getCompanySales() {
		return companySales;
	}

	public void setCompanySales(int companySales) {
		this.companySales = companySales;
	}

	public int getCompanyEmployeeNumber() {
		return companyEmployeeNumber;
	}

	public void setCompanyEmployeeNumber(int companyEmployeeNumber) {
		this.companyEmployeeNumber = companyEmployeeNumber;
	}

	public LocalDate getCompanyEstablishmentYear() {
		return companyEstablishmentYear;
	}

	public void setCompanyEstablishmentYear(LocalDate companyEstablishmentYear) {
		this.companyEstablishmentYear = companyEstablishmentYear;
	}

	public String getCompanyIntroduce() {
		return companyIntroduce;
	}

	public void setCompanyIntroduce(String companyIntroduce) {
		this.companyIntroduce = companyIntroduce;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public int getCompanyImageNumber() {
		return companyImageNumber;
	}

	public void setCompanyImageNumber(int companyImageNumber) {
		this.companyImageNumber = companyImageNumber;
	}

	public int getCompanyJobPostingId() {
		return companyJobPostingId;
	}

	public void setCompanyJobPostingId(int companyJobPostingId) {
		this.companyJobPostingId = companyJobPostingId;
	}

	public String getCompanyCountry() {
		return companyCountry;
	}

	public void setCompanyCountry(String companyCountry) {
		this.companyCountry = companyCountry;
	}

	public String getCompanyDetailCountry() {
		return companyDetailCountry;
	}

	public void setCompanyDetailCountry(String companyDetailCountry) {
		this.companyDetailCountry = companyDetailCountry;
	}

	public String getCompanyJobPostingTitle() {
		return companyJobPostingTitle;
	}

	public void setCompanyJobPostingTitle(String companyJobPostingTitle) {
		this.companyJobPostingTitle = companyJobPostingTitle;
	}

	public String getCompanyJobPostingImageNumber() {
		return companyJobPostingImageNumber;
	}

	public void setCompanyJobPostingImageNumber(String companyJobPostingImageNumber) {
		this.companyJobPostingImageNumber = companyJobPostingImageNumber;
	}

	public String getCompanyJobPostingIntroduce() {
		return companyJobPostingIntroduce;
	}

	public void setCompanyJobPostingIntroduce(String companyJobPostingIntroduce) {
		this.companyJobPostingIntroduce = companyJobPostingIntroduce;
	}

	public String getCompanyJobPostingManager() {
		return companyJobPostingManager;
	}

	public void setCompanyJobPostingManager(String companyJobPostingManager) {
		this.companyJobPostingManager = companyJobPostingManager;
	}

	public int getCompanyJobPostingRecruitment() {
		return companyJobPostingRecruitment;
	}

	public void setCompanyJobPostingRecruitment(int companyJobPostingRecruitment) {
		this.companyJobPostingRecruitment = companyJobPostingRecruitment;
	}

	public LocalDate getCompanyJobPostingPeriodStart() {
		return companyJobPostingPeriodStart;
	}

	public void setCompanyJobPostingPeriodStart(LocalDate companyJobPostingPeriodStart) {
		this.companyJobPostingPeriodStart = companyJobPostingPeriodStart;
	}

	public LocalDate getCompanyJobPostingPeriodEnd() {
		return companyJobPostingPeriodEnd;
	}

	public void setCompanyJobPostingPeriodEnd(LocalDate companyJobPostingPeriodEnd) {
		this.companyJobPostingPeriodEnd = companyJobPostingPeriodEnd;
	}

	public String getCompanyJobPostingManagerPhone() {
		return companyJobPostingManagerPhone;
	}

	public void setCompanyJobPostingManagerPhone(String companyJobPostingManagerPhone) {
		this.companyJobPostingManagerPhone = companyJobPostingManagerPhone;
	}

	public String getCompanyJobPostingManagerEmail() {
		return companyJobPostingManagerEmail;
	}

	public void setCompanyJobPostingManagerEmail(String companyJobPostingManagerEmail) {
		this.companyJobPostingManagerEmail = companyJobPostingManagerEmail;
	}

	public String getCompanyJobPostingQr() {
		return companyJobPostingQr;
	}

	public void setCompanyJobPostingQr(String companyJobPostingQr) {
		this.companyJobPostingQr = companyJobPostingQr;
	}

	public String getCompanyJobPostingPreference() {
		return companyJobPostingPreference;
	}

	public void setCompanyJobPostingPreference(String companyJobPostingPreference) {
		this.companyJobPostingPreference = companyJobPostingPreference;
	}

	public String getCompanyJobPostingWelfare() {
		return companyJobPostingWelfare;
	}

	public void setCompanyJobPostingWelfare(String companyJobPostingWelfare) {
		this.companyJobPostingWelfare = companyJobPostingWelfare;
	}

	public String getcompanyJobPostingJobGroup() {
		return companyJobPostingJobGroup;
	}

	public void setcompanyJobPostingJobGroup(String companyJobPostingJobGroup) {
		this.companyJobPostingJobGroup = companyJobPostingJobGroup;
	}

	public String getcompanyJobPostingJob() {
		return companyJobPostingJob;
	}

	public void setcompanyJobPostingJob(String companyJobPostingJob) {
		this.companyJobPostingJob = companyJobPostingJob;
	}

	public String getcompanyJobPostingCareer() {
		return companyJobPostingCareer;
	}

	public void setcompanyJobPostingCareer(String companyJobPostingCareer) {
		this.companyJobPostingCareer = companyJobPostingCareer;
	}

	public int getBookmarkId() {
		return bookmarkId;
	}

	public void setBookmarkId(int bookmarkId) {
		this.bookmarkId = bookmarkId;
	}

	public int getApplicationId() {
		return applicationId;
	}

	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public LocalDate getapplicationDate() {
		return applicationDate;
	}

	public void setapplicationDate(LocalDate applicationDate) {
		this.applicationDate = applicationDate;
	}

	@Override
	public String toString() {
		return "Application [companyId=" + companyId + ", companyEmail=" + companyEmail + ", companyPassword="
				+ companyPassword + ", companyName=" + companyName + ", companyRegistrationNumber="
				+ companyRegistrationNumber + ", companyAddress=" + companyAddress + ", companySales=" + companySales
				+ ", companyEmployeeNumber=" + companyEmployeeNumber + ", companyEstablishmentYear="
				+ companyEstablishmentYear + ", companyIntroduce=" + companyIntroduce + ", companyPhone=" + companyPhone
				+ ", companyImageNumber=" + companyImageNumber + ", companyJobPostingId=" + companyJobPostingId
				+ ", companyCountry=" + companyCountry + ", companyDetailCountry=" + companyDetailCountry
				+ ", companyJobPostingTitle=" + companyJobPostingTitle + ", companyJobPostingImageNumber="
				+ companyJobPostingImageNumber + ", companyJobPostingIntroduce=" + companyJobPostingIntroduce
				+ ", companyJobPostingManager=" + companyJobPostingManager + ", companyJobPostingRecruitment="
				+ companyJobPostingRecruitment + ", companyJobPostingPeriodStart=" + companyJobPostingPeriodStart
				+ ", companyJobPostingPeriodEnd=" + companyJobPostingPeriodEnd + ", companyJobPostingManagerPhone="
				+ companyJobPostingManagerPhone + ", companyJobPostingManagerEmail=" + companyJobPostingManagerEmail
				+ ", companyJobPostingQr=" + companyJobPostingQr + ", companyJobPostingPreference="
				+ companyJobPostingPreference + ", companyJobPostingWelfare=" + companyJobPostingWelfare
				+ ", companyJobPostingJobGroup=" + companyJobPostingJobGroup + ", companyJobPostingJob="
				+ companyJobPostingJob + ", companyJobPostingCareer=" + companyJobPostingCareer + ", bookmarkId="
				+ bookmarkId + ", applicationId=" + applicationId + ", userId=" + userId + ", userProfileImage="
				+ userProfileImage + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword="
				+ userPassword + ", userPhone=" + userPhone + ", userJobGroup=" + userJobGroup + ", userJob=" + userJob
				+ ", userCareer=" + userCareer + ", resumeTitle=" + resumeTitle + ", wishNumber=" + wishNumber
				+ ", applicationDate=" + applicationDate + "]";
	}

}
