package com.myapp.bookmark;

public class AddBookmark {
	private int bookmarkId;
	private int userId;
	private int companyJobPostingId;

	public AddBookmark(int bookmarkId, int userId, int companyJobPostingId) {
		super();
		this.bookmarkId = bookmarkId;
		this.userId = userId;
		this.companyJobPostingId = companyJobPostingId;
	}

	public AddBookmark() {
	}

	public int getBookmarkId() {
		return bookmarkId;
	}

	public void setBookmarkId(int bookmarkId) {
		this.bookmarkId = bookmarkId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCompanyJobPostingId() {
		return companyJobPostingId;
	}

	public void setCompanyJobPostingId(int companyJobPostingId) {
		this.companyJobPostingId = companyJobPostingId;
	}

	@Override
	public String toString() {
		return "AddBookmark [bookmarkId=" + bookmarkId + ", userId=" + userId + ", companyJobPostingId="
				+ companyJobPostingId + "]";
	}

}
