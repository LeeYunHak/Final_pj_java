package com.myapp.resume;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ResumeMapper {
	//이력서 작성
	@Insert("insert into resume(resume_id, resume_title, user_name, user_email, user_phone, introduce, career, education, skill, awards, write_date)"
			+" values(#{resumeId}, #{resumeTitle}, #{userName}, #{userEmail}, #{userPhone}, #{introduce}, #{career}, #{education}, #{skill}, #{awards}, #{writeDate})")
	@Options(useGeneratedKeys = true, keyProperty = "resumeId")
	public int resumeWrite(Resume resume);
	
	
	//이력서 목록에 띄워줄 조회
	@Select("select r.resume_title, r.user_name, r.write_date, r.user_email,r.resume_id, u.user_email"
			+ " from user u join resume r on u.user_email = r.user_email where u.user_email = #{userEmail}")
	public List<Resume> selectResumeList(String userEmail);
	
	
	
	
}
