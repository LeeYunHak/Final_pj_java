package com.myapp.company.job.posting;

import java.time.LocalDate;

public class CompanyJobPosting {
	private int companyJobPostingId; // 공고글번호(기본키, auto_increment)
	private int companyJobPostingNumber; // 구인글번호 외래키
	private String companyJobPostingImage; // 구인글이미지
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

	public CompanyJobPosting(int companyJobPostingId, int companyJobPostingNumber, String companyJobPostingImage,
			String companyJobPostingIntroduce, String companyJobPostingManager, int companyJobPostingRecruitment,
			LocalDate companyJobPostingPeriodStart, LocalDate companyJobPostingPeriodEnd,
			String companyJobPostingManagerPhone, String companyJobPostingManagerEmail, String companyJobPostingQr,
			String companyJobPostingPreference, String companyJobPostingWelfare) {
		super();
		this.companyJobPostingId = companyJobPostingId;
		this.companyJobPostingNumber = companyJobPostingNumber;
		this.companyJobPostingImage = companyJobPostingImage;
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
	}

	public CompanyJobPosting() {}

	public int getCompanyJobPostingId() {
		return companyJobPostingId;
	}

	public void setCompanyJobPostingId(int companyJobPostingId) {
		this.companyJobPostingId = companyJobPostingId;
	}

	public int getCompanyJobPostingNumber() {
		return companyJobPostingNumber;
	}

	public void setCompanyJobPostingNumber(int companyJobPostingNumber) {
		this.companyJobPostingNumber = companyJobPostingNumber;
	}

	public String getCompanyJobPostingImage() {
		return companyJobPostingImage;
	}

	public void setCompanyJobPostingImage(String companyJobPostingImage) {
		this.companyJobPostingImage = companyJobPostingImage;
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

	@Override
	public String toString() {
		return "CompanyJobPosting [companyJobPostingId=" + companyJobPostingId + ", companyJobPostingNumber="
				+ companyJobPostingNumber + ", companyJobPostingImage=" + companyJobPostingImage
				+ ", companyJobPostingIntroduce=" + companyJobPostingIntroduce + ", companyJobPostingManager="
				+ companyJobPostingManager + ", companyJobPostingRecruitment=" + companyJobPostingRecruitment
				+ ", companyJobPostingPeriodStart=" + companyJobPostingPeriodStart + ", companyJobPostingPeriodEnd="
				+ companyJobPostingPeriodEnd + ", companyJobPostingManagerPhone=" + companyJobPostingManagerPhone
				+ ", companyJobPostingManagerEmail=" + companyJobPostingManagerEmail + ", companyJobPostingQr="
				+ companyJobPostingQr + ", companyJobPostingPreference=" + companyJobPostingPreference
				+ ", companyJobPostingWelfare=" + companyJobPostingWelfare + "]";
	}

}