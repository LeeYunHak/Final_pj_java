package com.myapp.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myapp.company.job.posting.CompanyJobPosting;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	// 로그인 전 메인페이지
	@GetMapping("/mainBefore")
	public String mainBefore() {
		return "userMainBeforePage";
	}
	// 로그인 폼 요청 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@PostMapping("/mainAfter")
	public String loginUser(Model model, String userEmail, String userPassword) {
		User loginUser = userService.loginUserSelect(userEmail, userPassword);
		model.addAttribute("loginUser",loginUser);
		return "userMainPage";
	}
	
	// 회원가입
	@GetMapping("/joinUser")
	public String showJoinUser() {
		return "joinUserPage";
	}
	@PostMapping("/joinUser")
	public String joinUser(Model model, User user) {
		User joinUser = userService.joinUserInsert(user);

		model.addAttribute("joinUser", joinUser);

		return "userMain"; // 내 정보 설정 페이지로 가야함
	}
//	@GetMapping("/userMain")
//	public String userMain()

	// 로그인
	@GetMapping("/loginUser")
	public String showLoginUser() {
		return "loginUserPage";
	}
//	@PostMapping("/loginUser")
//	public String loginUser(Model model, String userEmail, String userPassword) {
//		User loginUser = userService.loginUserSelect(userEmail, userPassword);
//		model.addAttribute("loginUser",loginUser);
//		return "userMainPage";
//	}

	// 아이디 찾기
	@GetMapping("/findUser")
	public String showIdFindUser() {
		return "findUserPage";
	}
	@PostMapping("/findUser")
	public String idFindUser(Model model, String userName, String userPhone) {
		User findUser = userService.idFindUserSelect(userName, userPhone);
		model.addAttribute("findUser", findUser);
		return "loginUserPage";
	}

	// 비밀번호 찾기
	@GetMapping("/idFindUser")
	public String showPwFindUser() {
		return "pwFindUserPage";
	}
	@PostMapping("/idFindUser")
	public String pwFindUser(Model model, String userEmail) {
		User pwFindUser = userService.pwFindUserSelect(userEmail);
		model.addAttribute("pwFindUser", pwFindUser);
		return "loginUserPage";
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	// 로그인 후 메인페이지
	@GetMapping("/mainAfter")
	public String mainAfter(Model model) {
		
		List<CompanyJobPosting> cjpList = userService.mainCompanyJobPostingList(); 
		model.addAttribute("cjpList",cjpList);
		
		return "userMainPage";
	}
	
	
	
}

