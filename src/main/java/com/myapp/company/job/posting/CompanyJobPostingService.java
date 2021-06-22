package com.myapp.company.job.posting;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyJobPostingService {

	@Autowired
	CompanyJobPostingMapper companyJobPostingMapper;
	
	@Test
	public void test() {
		assertNotNull(companyJobPostingMapper);
	}

	
	// 공고글 등록[삽입]
	
	// 공고글 리스트[조회] - 로그인후메인페이지, 북마크, 공고목록. 등등?
	
	// 공고글 수정[수정]
	
	// 공고글 삭제[삭제]
	
}
