package com.myapp.company;

import java.time.LocalDate;

//dto
public class Company {
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
	private int companyJobPostingNumber; // 기업이 작성한 구인글 번호
	private String companyCountry; // 기업 지역
	private String companyDetailCountry; // 기업 세부지역
	// 구인글
	// 지원자현황
	// 제안현황
	// 찜한현황

	public Company(int companyId, String companyEmail, String companyPassword, String companyName,
			int companyRegistrationNumber, String companyAddress, int companySales, int companyEmployeeNumber,
			LocalDate companyEstablishmentYear, String companyIntroduce, String companyPhone, int companyImageNumber,
			int companyJobPostingNumber, String companyCountry, String companyDetailCountry) {
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
		this.companyJobPostingNumber = companyJobPostingNumber;
		this.companyCountry = companyCountry;
		this.companyDetailCountry = companyDetailCountry;
	}

	public Company() {
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

	public int getCompanyJobPostingNumber() {
		return companyJobPostingNumber;
	}

	public void setCompanyJobPostingNumber(int companyJobPostingNumber) {
		this.companyJobPostingNumber = companyJobPostingNumber;
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

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyEmail=" + companyEmail + ", companyPassword="
				+ companyPassword + ", companyName=" + companyName + ", companyRegistrationNumber="
				+ companyRegistrationNumber + ", companyAddress=" + companyAddress + ", companySales=" + companySales
				+ ", companyEmployeeNumber=" + companyEmployeeNumber + ", companyEstablishmentYear="
				+ companyEstablishmentYear + ", companyIntroduce=" + companyIntroduce + ", companyPhone=" + companyPhone
				+ ", companyImageNumber=" + companyImageNumber + ", companyJobPostingNumber=" + companyJobPostingNumber
				+ ", companyCountry=" + companyCountry + ", companyDetailCountry=" + companyDetailCountry + "]";
	}

}
