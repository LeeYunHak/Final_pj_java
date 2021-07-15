package com.myapp.user;

import java.io.IOException;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.myapp.application.Application;
import com.myapp.bookmark.Bookmark;
import com.myapp.companyJobPosting.CompanyJobPosting;
import com.myapp.jobPostingList.JobPostingList;
import com.myapp.kakao.Kakao_restapi;

@Controller
@RequestMapping("/user")
@SessionAttributes("/user")
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;

	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;

	@Autowired
	private JavaMailSenderImpl mailSender;

//	@Autowired
//	private Kakao_restapi kakao_restapi = new Kakao_restapi();

	// 로그인 전 메인페이지
	@GetMapping("/mainBefore")
	public String mainBefore(Model model, String userEmail, HttpSession session) {
		
		return "userMainBeforePage";
	}

	// 로그인 폼 요청 ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔
	@PostMapping("/mainBefore")
	public String loginUser(Model model, String userEmail, String userPassword, User user, HttpSession session) {
		User loginUser = userService.loginUserSelect(userEmail, userPassword);
		List<Bookmark> bookmarkList = userService.mydreamerBookmarkList(userEmail);
		List<Application> applicationList = userService.mydreamerApplicationList(userEmail);
		User userProfileEdit = userService.selectUserProfile(userEmail);
		List<JobPostingList> comList = userService.mainCompanyJobPostingList();
		model.addAttribute("comList", comList);
		System.out.println(comList);
		if (loginUser == null) {
			model.addAttribute("loginUser", "없음");
			return "userMainBeforePage";
		} else {
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("bookmarkList", bookmarkList);
			session.setAttribute("applicationList", applicationList);
			session.setAttribute("userProfileEdit", userProfileEdit);
			
			return "loginUserPage";
		}
	}

	// ✔✔✔✔✔✔✔✔구글 로그인 건들지마시오✔✔✔✔✔✔✔✔
	// 로그인 페이지로 이동하는 컨트롤러
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String initLogin(Model model, HttpSession session) throws Exception {

		// 구글code 발행
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();

		// 로그인페이지 이동 url생성
		String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

		model.addAttribute("google_url", url);
		// 생성한 인증 URL을 Model에 담아서 전달
		return "login";
	}

	// 구글 Callback호출 메소드
	@RequestMapping(value = "oauth2callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code) throws IOException {

		System.out.println("Google login success");

		// 저는 성공하면 리턴 페이지로 리다이렉트.
		return "userMainPage";
	}

	@RequestMapping(value = "/oauth", produces = "application/json")
	public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {
		System.out.println("로그인 할때 임시 코드값");
		// 카카오 홈페이지에서 받은 결과 코드
		System.out.println(code);
		System.out.println("로그인 후 결과값");

		// 카카오 rest api 객체 선언
		Kakao_restapi kr = new Kakao_restapi();
		// 결과값을 node에 담아줌
		JsonNode node = kr.getAccessToken(code);
		// 결과값 출력
		System.out.println(node);
		// 노드 안에 있는 access_token값을 꺼내 문자열로 변환
		String token = node.get("access_token").toString();
		// 세션에 담아준다.
		session.setAttribute("token", token);

		return "loginUserPage";
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////

	// 회원가입
	@GetMapping("/joinUser")
	public String showJoinUser() {
		return "joinUserPage";
	}

	@PostMapping("/joinUser")
	public String joinUser(Model model, User user) {
		User joinUser = userService.joinUserInsert(user);
		model.addAttribute("joinUser", joinUser);
		return "userMainBeforePage"; // 내 정보 설정 페이지로 가야함
	}

	// 아이디 중복검사
	@RequestMapping(value = "/emailChk", method = RequestMethod.POST)
	@ResponseBody
	public String idCheck(String userEmail) {
		System.out.println("아이디체크");
		int result = userService.idCheck(userEmail);
		System.out.println("결과 = " + result);
		if (result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 x
		}
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
		if (findUser == null) {
			model.addAttribute("check", 1);
		} else {
			model.addAttribute("check", 0);
			model.addAttribute("find_id", findUser.getUserEmail());
		}
		return "findUserPage";
	}

	// 비밀번호 찾기
//	@GetMapping("/idFindUser")
//	public String showPwFindUser() {
//		return "pwFindUserPage";
//	}
	@PostMapping("/findUserPw")
	public String pwFindUser(Model model, String userEmail) {
		User sendUserEmail = userService.pwFindUserSelect(userEmail);
		String subject = "Dreamer 비밀번호 변경 URL 안내";
		String content = "http://localhost:8080/user/pwUpdate?userEmail=" + sendUserEmail.getUserEmail();
		String from = "dreamer";
		String to = sendUserEmail.getUserEmail();
		System.out.println(to);

		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
			// true는 멀티파트 메세지를 사용하겠다는 의미

			/*
			 * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 MimeMessageHelper mailHelper = new
			 * MimeMessageHelper(mail,"UTF-8");
			 */

			mailHelper.setFrom(from);
			// 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
			// 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
			// mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			// true는 html을 사용하겠다는 의미입니다.

			/*
			 * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
			 */

			mailSender.send(mail);
			model.addAttribute("checked", 1);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("mail전송이 실패되었습니다.");
		}
		System.out.println("mail전송이 성공되었습니다.");
		return "findUserPage";

//		User pwFindUser = userService.pwFindUserSelect(userEmail);
//		model.addAttribute("pwFindUser", pwFindUser);
//		return "loginUserPage";
	}

	@GetMapping("/pwUpdate")
	public String pwSelect(Model model, String userEmail) {
		User stUser = userService.pwFindUserSelect(userEmail);
		System.out.println(stUser);
		model.addAttribute("stUser", stUser);
		return "pwFindUserPage";
	}

	@PostMapping("/pwUpdate")
	public String pwUpdate(Model model, User user) {
		User pwUser = userService.pwFindUserUpdate(user);
		model.addAttribute("pwUser", pwUser);
		System.out.println("수정 호출");
		System.out.println(pwUser);
		return "pwFindUserPage";
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 로그인 후 메인페이지
	// 전체 기업구인글 목록이 나오는 페이지
	// 로고눌렀을때
	@GetMapping("/mainAfterMain")
	public String mainAfterMain(Model model) {
		List<JobPostingList> comList = userService.mainCompanyJobPostingList();
		model.addAttribute("comList", comList);
		return "loginUserPage";
	}

	// 구직자가 보는 구인글 페이지
	@GetMapping("/companypost")
	public String companypost(Model model, int companyJobPostingId) {
		JobPostingList comList = userService.mainCompanyJobPostingById(companyJobPostingId);
		model.addAttribute("comList",comList);
		return "companypost";
	}
	
	@RequestMapping(value = "/mainAfter", method = RequestMethod.GET)
	@ResponseBody
	public String mainCompanyJobPostingListB(Model model) {
		List<JobPostingList> comList = userService.mainCompanyJobPostingList();
		model.addAttribute("comList", comList);
		return "loginUserPage";
	}

	// 직종으로 검색 후 기업구인글 목록이 나오는 페이지
	@RequestMapping(value = "/mainAfterJobGroup", method = RequestMethod.GET)
	@ResponseBody
	public String jobGroupCompanyJobPostingList(Model model, String companyJobPostingJobGroup) {
		List<JobPostingList> jobGroupList = userService.jobGroupCompanyJobPostingList(companyJobPostingJobGroup);
		model.addAttribute("jobGroupList", jobGroupList);
		return "loginUserPage";
	}

	// 세부직업으로 검색 후 기업구인글 목록이 나오는 페이지
	@RequestMapping(value = "/mainAfterDetaliJob", method = RequestMethod.GET)
	@ResponseBody
	public String detailJobCompanyJobPostingList(Model model, String companyJobPostingJob) {
		List<JobPostingList> detailJobList = userService.detailJobCompanyJobPostingList(companyJobPostingJob);
		model.addAttribute("detailJobList ", detailJobList);
		return "loginUserPage";
	}

	// 경력(작품개수)로 검색 후 기업구인글 목록이 나오는 페이지
	@RequestMapping(value = "/mainAfterCareer", method = RequestMethod.GET)
	@ResponseBody
	public String careerCompanyJobPostingList(Model model, String companyJobPostingCareer) {
		List<JobPostingList> careerList = userService.careerCompanyJobPostingList(companyJobPostingCareer);
		model.addAttribute("careerList", careerList);
		return "loginUserPage";
	}

	// 지역으로 검색 후 기업구인글 목록이 나오는 페이지
	@RequestMapping(value = "/mainAfterCountry", method = RequestMethod.GET)
	@ResponseBody
	public String countryCompanyJobPostingList(Model model, String companyCountry) {
		List<JobPostingList> countryList = userService.countryCompanyJobPostingList(companyCountry);
		model.addAttribute("countryList", countryList);
		return "loginUserPage";
	}

	// 상세지역으로 검색 후 기업구인글 목록이 나오는 페이지
	@RequestMapping(value = "/mainAfterDetailCountry", method = RequestMethod.GET)
	@ResponseBody
	public String detailCountryCompanyJobPostingList(Model model, String companyDetailCountry) {
		List<JobPostingList> detailCountryList = userService.detailCountryCompanyJobPostingList(companyDetailCountry);
		model.addAttribute("detailCountryList", detailCountryList);
		return "loginUserPage";
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////
	// 검색창
	@GetMapping("search")
	public String search() {
		return "searchpage";
	}

	// 마이 드리머
	@GetMapping("/mydreamer")
	public String myDreamerView(Model model) {

		return "mydreamer";
	}
	
	// 프로필메인페이지
	@GetMapping("/profileMain")
	public String profileMain() {
		return "profileMain";
	}

	// 마이드리머 프로필수정 페이지 //할것
	@GetMapping("/profileEdit")
	public String pofileEdit(Model model, String userEmail) {
		model.addAttribute("number",1);
		return "profileEdit";
	}
	
	@PostMapping("/profileEdit")
	public String pofileEditUpdate(Model model, User user) {
		User profileUpdate = userService.userProfileEdit(user);
		model.addAttribute("number",0);
		model.addAttribute("profileUpdate",profileUpdate);
		return "profileMain";
	}
	
	// 마이드리머 프로필삭제 페이지 
	@GetMapping("/profileEditDelete")
	public String profileEditDelete(Model model, String userEmail, String userPassword) {
		boolean deleteUser = userService.userDelete(userEmail, userPassword);
		model.addAttribute("deleteUser", deleteUser);
		return "userMainBeforePage";
	}
	
	// 전문분야 설정 페이지
	@GetMapping("/professional")
	public String professional(Model model, User user) {
		return "professional";
	}
	@PostMapping("/professional/update")
	public String professionalEdit(Model model, User user) {
		User professional = userService.professionalSet(user);
		model.addAttribute("professional", professional);
		model.addAttribute("update", 1);
		return "profileMain";
	}
	
	//계쩡 설정 페이지
	@GetMapping("/accountPage")
	public String accountPage() {
		return "accountpage";
	}
	//비밀번호 재설정
	@PostMapping("/reUserPw")
	public String reFindUser(Model model, String userEmail) {
		User sendUserEmail = userService.pwFindUserSelect(userEmail);
		String subject = "Dreamer 비밀번호 재설정 URL 안내";
		String content = "http://localhost:8080/user/pwUpdate?userEmail=" + sendUserEmail.getUserEmail();
		String from = "dreamer";
		String to = sendUserEmail.getUserEmail();
		System.out.println(to);

		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
			// true는 멀티파트 메세지를 사용하겠다는 의미

			/*
			 * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 MimeMessageHelper mailHelper = new
			 * MimeMessageHelper(mail,"UTF-8");
			 */

			mailHelper.setFrom(from);
			// 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
			// 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
			// mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);
			// true는 html을 사용하겠다는 의미입니다.

			/*
			 * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
			 */

			mailSender.send(mail);
			model.addAttribute("checked", 1);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("mail전송이 실패되었습니다.");
		}
		System.out.println("mail전송이 성공되었습니다.");
		return "accountpage";
	}
	
	//삭제 페이지
	@GetMapping("/dropoutpage")
	public String dropoutpage() {
		return "dropoutpage";
	}
	
	@PostMapping("/dropUser")
	public String dropUser(String userEmail, HttpSession session) {
		userService.userdDelete(userEmail);
		session.invalidate();
		return "userMainBeforePage";
	}
	
	@RequestMapping(value = "/ScrollDown", method = RequestMethod.POST)
	public @ResponseBody List<JobPostingList> scrollDown(@RequestBody JobPostingList cjpId){
		
		int pidStart = cjpId.getCompanyJobPostingId()-1;
		
		return userService.scrollDown(pidStart);
	}
	
	// 로그아웃
	@RequestMapping("/logOut")
	public String logout(HttpSession session) {
		session.invalidate();
		return "userMainBeforePage";
	}
}