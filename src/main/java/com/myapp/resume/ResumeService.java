package com.myapp.resume;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeService {
	
	@Autowired(required = true)
	ResumeMapper resumeMapper;
	
	//이력서 쓰기
	public Resume writeResume(Resume resume) {
		resume.setWriteDate(LocalDate.now());
		int row = resumeMapper.resumeWrite(resume);
		if(row == 1) {
			return new Resume(resume.getResumeId(), resume.getResumeTitle(), resume.getUserName(), resume.getUserEmail(), resume.getUserPhone(), resume.getIntroduce(), resume.getCareer(), resume.getEducation(), resume.getSkill(), resume.getAwards(), resume.getWriteDate());
		}else {
			return null;
		}
	}
	
	//이력서 목록
	public Resume selectResumeList(String userEmail){
		return resumeMapper.selectResumeList(userEmail);
	}
	
}
