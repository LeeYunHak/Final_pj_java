package com.myapp.company;

import java.time.LocalDate;

public class Company {
	private int companyId; //기업번호
	private String companyMainImage; //기업대표사진
	private String companyName; //기업이름
	private String companyEmail; //기업이메일(아이디)
	private String companyPassword; //기업비밀번호
	private String companyAddress; //기업주소
	private String companyPhone; //기업연락처
	private int companyRegistrationNumber; //사업자등록번호
	private String companyCountry; //기업지역(위치)
	private int companySales; //기업매출액
	private int companyEmployeeNumber; //직원수
	private String companyIntroduce; //기업소개
	private LocalDate companyEstablishmentYear; //설립연도

	public Company(int companyId, String companyMainImage, String companyName, String companyEmail,
			String companyPassword, String companyAddress, String companyPhone, int companyRegistrationNumber,
			String companyCountry, int companySales, int companyEmployeeNumber, String companyIntroduce,
			LocalDate companyEstablishmentYear) {
		super();
		this.companyId = companyId;
		this.companyMainImage = companyMainImage;
		this.companyName = companyName;
		this.companyEmail = companyEmail;
		this.companyPassword = companyPassword;
		this.companyAddress = companyAddress;
		this.companyPhone = companyPhone;
		this.companyRegistrationNumber = companyRegistrationNumber;
		this.companyCountry = companyCountry;
		this.companySales = companySales;
		this.companyEmployeeNumber = companyEmployeeNumber;
		this.companyIntroduce = companyIntroduce;
		this.companyEstablishmentYear = companyEstablishmentYear;
	}

	public Company() {}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCompanyMainImage() {
		return companyMainImage;
	}

	public void setCompanyMainImage(String companyMainImage) {
		this.companyMainImage = companyMainImage;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public int getCompanyRegistrationNumber() {
		return companyRegistrationNumber;
	}

	public void setCompanyRegistrationNumber(int companyRegistrationNumber) {
		this.companyRegistrationNumber = companyRegistrationNumber;
	}

	public String getCompanyCountry() {
		return companyCountry;
	}

	public void setCompanyCountry(String companyCountry) {
		this.companyCountry = companyCountry;
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

	public String getCompanyIntroduce() {
		return companyIntroduce;
	}

	public void setCompanyIntroduce(String companyIntroduce) {
		this.companyIntroduce = companyIntroduce;
	}

	public LocalDate getCompanyEstablishmentYear() {
		return companyEstablishmentYear;
	}

	public void setCompanyEstablishmentYear(LocalDate companyEstablishmentYear) {
		this.companyEstablishmentYear = companyEstablishmentYear;
	}

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyMainImage=" + companyMainImage + ", companyName="
				+ companyName + ", companyEmail=" + companyEmail + ", companyPassword=" + companyPassword
				+ ", companyAddress=" + companyAddress + ", companyPhone=" + companyPhone
				+ ", companyRegistrationNumber=" + companyRegistrationNumber + ", companyCountry=" + companyCountry
				+ ", companySales=" + companySales + ", companyEmployeeNumber=" + companyEmployeeNumber
				+ ", companyIntroduce=" + companyIntroduce + ", companyEstablishmentYear=" + companyEstablishmentYear
				+ "]";
	}

}
