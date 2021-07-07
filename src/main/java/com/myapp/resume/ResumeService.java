package com.myapp.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeService {
	
	@Autowired(required = true)
	ResumeMapper resumeMapper;
	
	public Resume writeResume(Resume resume) {
		int row = resumeMapper.resumeWrite(resume);
		if(row == 1) {
			return new Resume(resume.getResumeId(), resume.getResumeTitle(), resume.getUserName(), resume.getUserEmail(), resume.getUserPhone(), resume.getIntroduce(), resume.getCareer(), resume.getEducation(), resume.getSkill(), resume.getAwards());
		}else {
			return null;
		}
	}
}
