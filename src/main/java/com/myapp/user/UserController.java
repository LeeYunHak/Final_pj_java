package com.myapp.user;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	// 로그인 전 메인페이지
	@GetMapping("/mainBefore")
	public String mainBefore() {
		return "userMainBeforePage";
	}
	// 로그인 폼 요청 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@PostMapping("/mainBefore")
	public String loginUser(Model model, String userEmail, String userPassword) {
		User loginUser = userService.loginUserSelect(userEmail, userPassword);
		if(loginUser == null) {
			model.addAttribute("loginUser","없음");
			return "userMainBeforePage";
		}else {
			model.addAttribute("loginUser",loginUser);
			return "userMainPage";
		}
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
//	@GetMapping("/idFindUser")
//	public String showPwFindUser() {
//		return "pwFindUserPage";
//	}
	@PostMapping("/idFindUser")
	public String pwFindUser(Model model, String userEmail) {
		User pwFindUser = userService.pwFindUserSelect(userEmail);
		model.addAttribute("pwFindUser", pwFindUser);
		return "loginUserPage";
	}
	@GetMapping("/sendMail")
	public void sendMailTest() {
		String subject = "test 메일";
		String content = "테스트임요";
		String from = "testyor32@gmail.com";
		String to = "testyol32@naver.com";

		try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
            // true는 멀티파트 메세지를 사용하겠다는 의미
            
            /*
             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 
             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
             */
            
            mailHelper.setFrom(from);
            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            // true는 html을 사용하겠다는 의미입니다.
            
            /*
             * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
             */
            
            mailSender.send(mail);
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println("mail전송이 실패되었습니다.");
        }        
		System.out.println("mail전송이 성공되었습니다.");
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

