package com.myapp.jobPostingList;

import java.time.LocalDate;

public class JobPostingList {
	private int companyId; // 기업번호(기본키, auto_increment)
	private String companyEmail; // 기업이메일(아이디)
	private String companyPassword; // 기업비밀번호
	private String companyName; // 기업이름
	private String companyRegistrationNumber; // 사업자등록번호
	private String companyAddress; // 기업주소
	private String companySales; // 기업매출액
	private int companyEmployeeNumber; // 직원수
	private LocalDate companyEstablishmentYear; // 설립연도
	private String companyIntroduce; // 기업소개
	private String companyPhone; // 기업연락처
	private int companyImageNumber; // 기업 대표 사진
	private String companyCountry; // 기업 지역
	private String companyDetailCountry; // 기업 세부지역
	private int companyJobPostingId; // 공고글번호(기본키, auto_increment)
	private String companyJobPostingTitle; // 구인글 제목
	private String companyJobPostingImageNumber; // 구인글이미지
	private String companyJobPostingIntroduce; // 구인회사소개(타입text)
	private String companyJobPostingManager; // 채용담당자
	private String companyJobPostingRecruitment; // 모집인원
	private LocalDate companyJobPostingPeriodStart; // 모집 시작일
	private LocalDate companyJobPostingPeriodEnd; // 모집 마감일
	private String companyJobPostingManagerPhone; // 담당자 연락처
	private String companyJobPostingManagerEmail; // 담당자 이메일
	private String companyJobPostingQr; // 자격요건
	private String companyJobPostingPreference; // 우대사항
	private String companyJobPostingWelfare; // 혜택 및 복지
	private String companyJobJostingJobGroup; // 모집분야 직종
	private String companyJobJostingJob; // 모집분야 직종의 세부직무
	private String companyJobJostingCareer; // 모집분야 경력(작품개수)
	private int bookmarkId; // 북마크 번호
	private LocalDate writeDate;
	
	
	public JobPostingList(int companyId, String companyEmail, String companyPassword, String companyName,
			String companyRegistrationNumber, String companyAddress, String companySales, int companyEmployeeNumber,
			LocalDate companyEstablishmentYear, String companyIntroduce, String companyPhone, int companyImageNumber,
			String companyCountry, String companyDetailCountry, int companyJobPostingId, String companyJobPostingTitle,
			String companyJobPostingImageNumber, String companyJobPostingIntroduce, String companyJobPostingManager,
			String companyJobPostingRecruitment, LocalDate companyJobPostingPeriodStart,
			LocalDate companyJobPostingPeriodEnd, String companyJobPostingManagerPhone,
			String companyJobPostingManagerEmail, String companyJobPostingQr, String companyJobPostingPreference,
			String companyJobPostingWelfare, String companyJobJostingJobGroup, String companyJobJostingJob,
			String companyJobJostingCareer, int bookmarkId, LocalDate writeDate) {
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
		this.companyCountry = companyCountry;
		this.companyDetailCountry = companyDetailCountry;
		this.companyJobPostingId = companyJobPostingId;
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
		this.companyJobJostingJobGroup = companyJobJostingJobGroup;
		this.companyJobJostingJob = companyJobJostingJob;
		this.companyJobJostingCareer = companyJobJostingCareer;
		this.bookmarkId = bookmarkId;
		this.writeDate = writeDate;
	}


	public JobPostingList() {
		super();
		// TODO Auto-generated constructor stub
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


	public String getCompanyRegistrationNumber() {
		return companyRegistrationNumber;
	}


	public void setCompanyRegistrationNumber(String companyRegistrationNumber) {
		this.companyRegistrationNumber = companyRegistrationNumber;
	}


	public String getCompanyAddress() {
		return companyAddress;
	}


	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}


	public String getCompanySales() {
		return companySales;
	}


	public void setCompanySales(String companySales) {
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


	public int getCompanyJobPostingId() {
		return companyJobPostingId;
	}


	public void setCompanyJobPostingId(int companyJobPostingId) {
		this.companyJobPostingId = companyJobPostingId;
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


	public String getCompanyJobPostingRecruitment() {
		return companyJobPostingRecruitment;
	}


	public void setCompanyJobPostingRecruitment(String companyJobPostingRecruitment) {
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


	public String getCompanyJobJostingJobGroup() {
		return companyJobJostingJobGroup;
	}


	public void setCompanyJobJostingJobGroup(String companyJobJostingJobGroup) {
		this.companyJobJostingJobGroup = companyJobJostingJobGroup;
	}


	public String getCompanyJobJostingJob() {
		return companyJobJostingJob;
	}


	public void setCompanyJobJostingJob(String companyJobJostingJob) {
		this.companyJobJostingJob = companyJobJostingJob;
	}


	public String getCompanyJobJostingCareer() {
		return companyJobJostingCareer;
	}


	public void setCompanyJobJostingCareer(String companyJobJostingCareer) {
		this.companyJobJostingCareer = companyJobJostingCareer;
	}


	public int getBookmarkId() {
		return bookmarkId;
	}


	public void setBookmarkId(int bookmarkId) {
		this.bookmarkId = bookmarkId;
	}


	public LocalDate getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(LocalDate writeDate) {
		this.writeDate = writeDate;
	}


	@Override
	public String toString() {
		return "JobPostingList [companyId=" + companyId + ", companyEmail=" + companyEmail + ", companyPassword="
				+ companyPassword + ", companyName=" + companyName + ", companyRegistrationNumber="
				+ companyRegistrationNumber + ", companyAddress=" + companyAddress + ", companySales=" + companySales
				+ ", companyEmployeeNumber=" + companyEmployeeNumber + ", companyEstablishmentYear="
				+ companyEstablishmentYear + ", companyIntroduce=" + companyIntroduce + ", companyPhone=" + companyPhone
				+ ", companyImageNumber=" + companyImageNumber + ", companyCountry=" + companyCountry
				+ ", companyDetailCountry=" + companyDetailCountry + ", companyJobPostingId=" + companyJobPostingId
				+ ", companyJobPostingTitle=" + companyJobPostingTitle + ", companyJobPostingImageNumber="
				+ companyJobPostingImageNumber + ", companyJobPostingIntroduce=" + companyJobPostingIntroduce
				+ ", companyJobPostingManager=" + companyJobPostingManager + ", companyJobPostingRecruitment="
				+ companyJobPostingRecruitment + ", companyJobPostingPeriodStart=" + companyJobPostingPeriodStart
				+ ", companyJobPostingPeriodEnd=" + companyJobPostingPeriodEnd + ", companyJobPostingManagerPhone="
				+ companyJobPostingManagerPhone + ", companyJobPostingManagerEmail=" + companyJobPostingManagerEmail
				+ ", companyJobPostingQr=" + companyJobPostingQr + ", companyJobPostingPreference="
				+ companyJobPostingPreference + ", companyJobPostingWelfare=" + companyJobPostingWelfare
				+ ", companyJobJostingJobGroup=" + companyJobJostingJobGroup + ", companyJobJostingJob="
				+ companyJobJostingJob + ", companyJobJostingCareer=" + companyJobJostingCareer + ", bookmarkId="
				+ bookmarkId + ", writeDate=" + writeDate + "]";
	}
	
	

	

}
