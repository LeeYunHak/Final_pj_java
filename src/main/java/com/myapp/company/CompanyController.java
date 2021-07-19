package com.myapp.company;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.myapp.application.Application;
import com.myapp.bookmark.Bookmark;
import com.myapp.jobPostingList.JobPostingList;
import com.myapp.resume.Resume;
import com.myapp.user.User;

@Controller
@RequestMapping("/company")
@SessionAttributes("/company")
public class CompanyController {

    // companyService 자동 변수
    @Autowired
    CompanyService companyService;

    
    
    
    
    
    
    
    
    
    
    
    // 로그인 전 - 메인페이지
    @GetMapping("/MainBefore")
    public String mainBefore() {
        return "companyMain";
    }

    @PostMapping("/mainBefore")
    public String loginUser(Model model, String userEmail, String userPassword, User user, HttpSession session) {
		Company loginUser = companyService.loginCompanySelect(userEmail, userPassword);
		List<Bookmark> bookmarkList = companyService.mydreamerBookmarkList(userEmail);
		List<Application> applicationList = companyService.mydreamerApplicationList(userEmail);
		User userProfileEdit = companyService.selectUserProfile(userEmail);
		List<JobPostingList> comList = companyService.mainCompanyJobPostingList();
		model.addAttribute("comList", comList);
		System.out.println(comList);
		List<Resume> resumeList = companyService.selectResume(userEmail);
		model.addAttribute("resumeList",resumeList);
		if (loginUser == null) {
			model.addAttribute("loginUser", "없음");
			return "userMainBeforePage";
		} else {
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("bookmarkList", bookmarkList);
			session.setAttribute("applicationList", applicationList);
			session.setAttribute("userProfileEdit", userProfileEdit);
			session.setAttribute("resumeList", resumeList);
			
			return "loginUserPage";
		}
	}
    
    // 로그인 후 - 메인페이지
    @GetMapping("/MainAfter")
    public String mainAfter() {
        return "companyMainAfterPage";
    }

    // 로그인 전 - 채용담당자(기업) 가입[삽입] - 회사정보도같이 등록
    @GetMapping("/joinCompany")
    public String showJoinCompany() {
        return "joinCompanyPage";
    }
    @PostMapping("/joinCompany")
    public String joinCompany(Model model, Company company) {
        Company joinCompany = companyService.joinCompanyInsert(company);
        model.addAttribute("joinCompany", joinCompany);
        return "companyMainBeforePage";
    }

    // 로그인 전 - 채용담당자 로그인[조회](이메일, 비밀번호 둘다 입력)
    @GetMapping("/loginCompany")
    public String showLoginCompany() {
        return "loginCompanyPage"; //고민중????????????? //
    }
    @PostMapping("/loginCompany")
    public String loginCompany(Model model, String companyEmail, String companyPassword) {
        Company loginCompany = companyService.loginCompanySelect(companyEmail, companyPassword);
        model.addAttribute("loginCompany", loginCompany);
        return "companyMainAfterPage";
    }

    // 로그인 후 - 회사정보(기업) 로그인중 수정[업뎃]

    // 로그인 후 - 회사정보(기업) 비번수정[업뎃] by email

    // 로그인 후 - 채용담당자(기업) 로그인중 탈퇴[삭제]

}