package com.myapp.resume;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface ResumeMapper {
	//이력서 작성
	@Insert("insert into resume(resume_id, resume_title, user_name, user_email, user_phone, introduce, carrer, education, skill, awards)"
			+" values(#{resume_id}, #{resume_title}, #{user_name}, #{user_eamil}, #{user_phone}, #{introduce}, #{carrer}, #{education}, #{skill}, #{awards}")
	@Options(useGeneratedKeys = true, keyProperty = "resume_id")
	public int resumeWrite(Resume resume);
	
	
	
}
