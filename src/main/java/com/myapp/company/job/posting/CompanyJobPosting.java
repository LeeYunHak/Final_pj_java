package com.myapp.company.job.posting;

import java.time.LocalDateTime;

public class CompanyJobPosting {
	private int companyJobPostingId; // 공고글번호(기본키, auto_increment)
	private int companyJobPostingNumber; // 구인글번호 외래키
	private String companyJobPostingImage; // 구인글이미지
	private String companyJobPostingContents; // 구인글내용(타입text)
	private LocalDateTime companyJobPostingDeadline; // 구인글마감일

	public CompanyJobPosting(int companyJobPostingId, int companyJobPostingNumber, String companyJobPostingImage,
			String companyJobPostingContents, LocalDateTime companyJobPostingDeadline) {
		super();
		this.companyJobPostingId = companyJobPostingId;
		this.companyJobPostingNumber = companyJobPostingNumber;
		this.companyJobPostingImage = companyJobPostingImage;
		this.companyJobPostingContents = companyJobPostingContents;
		this.companyJobPostingDeadline = companyJobPostingDeadline;
	}

	public CompanyJobPosting() {
		super();
	}

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

	public String getCompanyJobPostingContents() {
		return companyJobPostingContents;
	}

	public void setCompanyJobPostingContents(String companyJobPostingContents) {
		this.companyJobPostingContents = companyJobPostingContents;
	}

	public LocalDateTime getCompanyJobPostingDeadline() {
		return companyJobPostingDeadline;
	}

	public void setCompanyJobPostingDeadline(LocalDateTime companyJobPostingDeadline) {
		this.companyJobPostingDeadline = companyJobPostingDeadline;
	}

	@Override
	public String toString() {
		return "CompanyJobPosting [companyJobPostingId=" + companyJobPostingId + ", companyJobPostingNumber="
				+ companyJobPostingNumber + ", companyJobPostingImage=" + companyJobPostingImage
				+ ", companyJobPostingContents=" + companyJobPostingContents + ", companyJobPostingDeadline="
				+ companyJobPostingDeadline + "]";
	}
}