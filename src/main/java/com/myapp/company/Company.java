package com.myapp.company;

import java.time.LocalDate;
//dto
public class Company {
	private int companyId; //기업번호(기본키, auto_increment)
//	private String companyMainImage; //기업대표사진
	private String companyEmail; //기업이메일(아이디)
	private String companyPassword; //기업비밀번호
	private String companyName; //기업이름
	private int companyRegistrationNumber; //사업자등록번호
	private String companyAddress; //기업주소
	private int companySales; //기업매출액
	private int companyEmployeeNumber; //직원수
	private LocalDate companyEstablishmentYear; //설립연도
	private String companyIntroduce; //기업소개
	private String companyPhone; //기업연락처
//	private String companyCountry; //기업지역(위치)

	public Company(int companyId, String companyEmail, String companyPassword, String companyName,
			int companyRegistrationNumber, String companyAddress, int companySales, int companyEmployeeNumber,
			LocalDate companyEstablishmentYear, String companyIntroduce, String companyPhone) {
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
	}

	public Company() {
		super();
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

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyEmail=" + companyEmail + ", companyPassword="
				+ companyPassword + ", companyName=" + companyName + ", companyRegistrationNumber="
				+ companyRegistrationNumber + ", companyAddress=" + companyAddress + ", companySales=" + companySales
				+ ", companyEmployeeNumber=" + companyEmployeeNumber + ", companyEstablishmentYear="
				+ companyEstablishmentYear + ", companyIntroduce=" + companyIntroduce + ", companyPhone=" + companyPhone
				+ "]";
	}
}
