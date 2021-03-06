package com.myapp.user;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.myapp.application.Application;
import com.myapp.bookmark.AddBookmark;
import com.myapp.bookmark.Bookmark;
import com.myapp.jobPostingList.JobPostingList;
import com.myapp.resume.Resume;

@Mapper
public interface UserMapper {

	// 구직자 회원가입
	@Insert("insert into user(user_id, user_name, user_email, user_password, user_phone)"
			+ " values(#{userId}, #{userName}, #{userEmail}, #{userPassword}, #{userPhone})")
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	public int joinUser(User user);
	// 아이디 중복체크
	@Select("select count(*) from user where user_email = #{userEmail}")
	public int idCheck(String userEmail);
	
	// 구직자 로그인 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@Select("select * from user "
			+ "where user_email = #{userEmail} and user_password = #{userPassword}")
	public User loginUser(@Param("userEmail") String userEmail,@Param("userPassword") String userPassword);
	
	// 아이디 찾기
	@Select("select user_email from user "
			+ "where user_name = #{userName} and user_phone = #{userPhone}")
	public User idFindUser(@Param("userName") String userName, @Param("userPhone") String userPhone);

	// 비밀번호!!!!!!!!!!!!!
	// 찾을 비밀번호 url전송
	@Select("select  user_password,user_email from user where user_email=#{userEmail}")
	public User pwFindUserSend(String userEmail);
	// url전송된 비밀번호 설정
	@Update("update user set user_password=#{userPassword} where user_email=#{userEmail} ")
	public int pwFindUserReceiveByUserEmail(User user);
	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 로그인 후 메인페이지(탐색페이지)
	// 기업구인글 목록이 쫘르르르르륵
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id limit 0,20")
	public List<JobPostingList> selectCompany();
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id where cj.company_job_posting_id = ${companyJobPostingId}")
	public JobPostingList selectIdCompany(int companyJobPostingId);
	
	// 직종 선택 후 구인글 조회하기
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id"
			+ " where cj.company_job_posting_job_group = #{companyJobPostingJobGroup}")
	public List<JobPostingList> selectCompanyJobGroup(String companyJobPostingJobGroup);
		
	// 세부직무 선택 후 구인글 조회하기 
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id"
			+ " where cj.company_job_posting_job = #{companyJobPostingJob}")
	public List<JobPostingList> selectCompanyDetailJob(String companyJobPostingJob);
		
	// 경력(작품개수) 선택 후 구인글 조회하기 
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id"
			+ " where cj.company_job_posting_career = #{companyJobPostingCareer}")
	public List<JobPostingList> selectCompanyCareer(String companyJobPostingCareer);
	
	// 지역 선택 후 구인글 조회하기 
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id"
			+ " where c.company_country = #{companyCountry}")
	public List<JobPostingList> selectCompanyCountry(String companyCountry);
	
	// 상세지역 선택 후 구인글 조회하기 
	@Select("select * from company_job_posting cj join company c on cj.company_id = c.company_id"
			+ " where c.company_detail_country = #{companyDetailCountry}")
	public List<JobPostingList> selectCompanyDetailCountry(String companyDetailCountry);
	
///////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 마이드리머 지원하기 목록
	@Select("select c.company_name, cj.company_job_posting_job_group, cj.company_job_posting_job, a.application_date from user u "
			+ "join application a on u.user_id = a.user_id join "
			+ "company_job_posting cj on a.application_id = cj.application_id join company c on "
			+ "cj.company_id = c.company_id where u.user_email = #{userEmail}")
	public List<Application> selectApplication(String userEmail);
	
	// 마이드리머 북마크 구인글 목록
	@Select("select cj.company_job_posting_title, c.company_name, c.company_country, cj.company_job_posting_period_end "
			+ "from user u join bookmark b on u.user_id = b.user_id join "
			+ "company_job_posting cj on b.company_job_posting_id = cj.company_job_posting_id join company c on "
			+ "cj.company_id = c.company_id where u.user_email = #{userEmail}")
	public List<Bookmark> selectBookmark(String userEmail);
	
	// 프로필 수정
	@Select("select * from user where user_email = #{userEmail}")
	public User selectProfile(String userEmail);
	@Update("update user set user_name = #{userName}, user_password = #{userPassword}, user_email = #{userEmail}, user_phone = #{userPhone} "
			+ "where user_email = #{userEmail}")
	public int updateProfile(User user);
	
	// 전문분야 설정
	@Update("update user set user_job_group = #{userJobGroup}, user_job = #{userJob}, user_career = #{userCareer} where user_email = #{userEmail} ")
	public int updateProfessional(User user);
	
	// 회원탈퇴
	@Delete("delete from user where user_email = #{userEmail} and user_password = #{userPassword}")
	public int deleteUser(@Param("userEmail") String userEmail, @Param("userPassword") String userPassword);
	// 회원탈퇴
	@Delete("delete from user where user_email = #{userEmail}")
	public int ddeleteUser(String userEmail);
	
	//게시물 20개 조회하고 나서 20개 더 불러오기
//	select * from company_job_posting cj join company c on cj.company_id = c.company_id limit 0,20"
	@Select("select * from company_job_posting where company_job_posting_id > #{companyJobPostingId} and company_job_posting_id < #{companyJobPostingId}+20")
	public List<JobPostingList> selectJbPosting(int companyJobPostingId);
	
	//북마크 추가하기
	@Insert("insert into bookmark values(#{bookmarkId}, #{userId}, #{companyJobPostingId})")
	@Options(useGeneratedKeys = true, keyProperty = "bookmarkId")
	public int addBookmark(AddBookmark addBookmark);
	
	//이력서
	@Select("select * from resume where user_email = #{userEmail}")
	public List<Resume> selectResume(String userEmail);
	//작성중이던 이력서
	@Select("select * from resume where resume_Id = #{resumeId}")
	public Resume selectResumeWriting(int resumeId);
	
	//이력서 작성
	@Insert("insert into resume values(#{resumeId},#{resumeTitle},#{userName},#{userEmail},#{userPhone},#{introduce},#{career},#{education},#{skill},#{awards},#{writeDate})")
	@Options(useGeneratedKeys = true, keyProperty = "resumeId")
	public int addResume(Resume resume);
	
	//이력서 수정
	@Update("update resume set resume_title = #{resumeTitle},user_name = #{userName},user_email = #{userEmail},user_phone = #{userPhone},introduce = #{introduce},career = #{career},education = #{education},skill = #{skill},awards = #{awards},write_date = #{writeDate}"
			+ " where resume_id = #{resumeId}")
	public int updateResume(Resume resume);
	
	//이력서 삭제
	@Delete("delete from resume where resume_id = #{resumeId}")
	public int deleteResume(int resumeId);
	
}
