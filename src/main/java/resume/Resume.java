package resume;

public class Resume {
	private int resumeId; // 일련번호
	private String resumeTitle; // 이력서제목
	private String introduce; // 자기소개
	private String career; // 경력(작품개수)
	private String education; // 학력
	private String skill; // 특기 및 기
	private String awards; // 수상경력 및 기타 경험

	public Resume(int resumeId, String resumeTitle, String introduce, String career, String education, String skill,
			String awards) {
		super();
		this.resumeId = resumeId;
		this.resumeTitle = resumeTitle;
		this.introduce = introduce;
		this.career = career;
		this.education = education;
		this.skill = skill;
		this.awards = awards;
	}

	public Resume() {}

	public int getResumeId() {
		return resumeId;
	}

	public void setResumeId(int resumeId) {
		this.resumeId = resumeId;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getAwards() {
		return awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	@Override
	public String toString() {
		return "Resume [resumeId=" + resumeId + ", resumeTitle=" + resumeTitle + ", introduce=" + introduce
				+ ", career=" + career + ", education=" + education + ", skill=" + skill + ", awards=" + awards + "]";
	}
}
