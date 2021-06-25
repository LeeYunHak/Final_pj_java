package test;

import static org.junit.Assert.*;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root_context.xml")
public class mailTest {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Test
	public void mailSendTest() throws Exception {

		String subject = "test 메일";
		String content = "테스트임요";
		String from = "royparking0@gmail.com";
		String to = "royparking0@naver.com";

		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, "UTF-8");

			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);


			mailSender.send(mail);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
