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
    @GetMapping("/mainBefore")
    public String mainBefore(Model model, String companyEmail, HttpSession session) {
        return "companyMain";
    }

    @PostMapping("/mainBefore")
    public String loginUser(Model model, String userEmail, String userPassword, User user, HttpSession session) {
		Company loginUser = companyService.loginCompanySelect(userEmail, userPassword);
//		model.addAttribute("comList", comList);
//		model.addAttribute("resumeList",resumeList);
		if (loginUser == null) {
			model.addAttribute("loginUser", "없음");
			return "userMainBeforePage";
		} else {
			session.setAttribute("loginUser", loginUser);

			
			return "loginUserPage";
		}
	}
    // 로그인 전 - 채용담당자(기업) 가입[삽입] - 회사정보도같이 등록
    
    @PostMapping("/joinCompany")
    public String joinCompany(Model model, Company company) {
        Company joinCompany = companyService.joinCompanyInsert(company);
        model.addAttribute("joinCompany", joinCompany);
        return "companyMain";
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
    
    
    // 로그인 후 - 메인페이지
    @GetMapping("/MainAfter")
    public String mainAfter() {
        return "companyMainAfterPage";
    }

    
    
    //회사정보
    @GetMapping("/companyInfo")
    public String companyInfo() {
        return "companyInfo";
    }
    //회사채용담당자가입
    @GetMapping("/companyJoin")
    public String companyJoin() {
    	return "companyJoin";
    }
    //회사이미지
    @GetMapping("/companyImage")
    public String companyImage() {
        return "companyImage";
    }
    //회사구인리스트
    @GetMapping("/recruitmentList")
    public String recruitmentList() {
        return "recruitmentList";
    }
    //회사구인리스트-
    @GetMapping("/recruitmentOfCompany")
    public String recruitmentOfCompany() {
        return "recruitmentOfCompany";
    }
    //회사구인글
    @GetMapping("/recruitmentRegistration")
    public String recruitmentRegistration() {
        return "recruitmentRegistration";
    }
    //회사지원자현황
    @GetMapping("/applicantstatus")
    public String applicantstatus() {
        return "applicantstatus";
    }
    //회사구인자메인화면
    @GetMapping("/applicantpage")
    public String applicantpage() {
        return "applicantpage";
    }
    //회사기업계정설정페이지
    @GetMapping("/co_accountpage")
    public String co_accountpage() {
        return "co_accountpage";
    }
    //회사계정설정페이지
    @GetMapping("/co_dropoutpage")
    public String co_dropoutpage() {
        return "co_dropoutpage";
    }
    
    //고객센터 페이지
    @GetMapping("/customerService")
    public String customerService() {
        return "customerService";
    }
    //고객센터 페이지-문의등록
    @GetMapping("/contactUs")
    public String contactUs() {
        return "contactUs";
    }
    //고객센터 페이지
    @GetMapping("/co_qna1")
    public String co_qna1() {
        return "co_qna1";
    }
    
    // 로그인 후 - 회사정보(기업) 로그인중 수정[업뎃]

    // 로그인 후 - 회사정보(기업) 비번수정[업뎃] by email

    // 로그인 후 - 채용담당자(기업) 로그인중 탈퇴[삭제]

}