package com.myapp.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userMainBefore")
public class UserController {

	@Autowired
	UserService userService;

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

	// 로그인
	@GetMapping("/loginUser")
	public String showLoginUser() {
		return "loginUserPage";
	}

	@PostMapping("/loginUser")
	public String loginUser(Model model, User user) {
		User loginUser = userService.joinUserInsert(user);

		model.addAttribute("loginUser", loginUser);

		return "userMain";
	}

	// 아이디 찾기
	@GetMapping("/idFindUser")
	public String showIdFindUser() {
		return "idFindUserPage";
	}

	@PostMapping("/idFindUser")
	public String idFindUser(Model model, User user) {
		User idFindUser = userService.joinUserInsert(user);

		model.addAttribute("idFindUser", idFindUser);

		return "userMain";
	}

	// 비밀번호 찾기
	@GetMapping("/pwFindUser")
	public String showPwFindUser() {
		return "pwFindUserPage";
	}

	@PostMapping("/pwFindUser")
	public String pwFindUser(Model model, User user) {
		User pwFindUser = userService.joinUserInsert(user);

		model.addAttribute("pwFindUser", pwFindUser);

		return "userMain";
	}
}
