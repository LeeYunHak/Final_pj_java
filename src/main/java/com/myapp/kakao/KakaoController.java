package com.myapp.kakao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class KakaoController {
private Kakao_restapi kakao_restapi = new Kakao_restapi();
    
    @RequestMapping(value = "/login", produces = "application/json", method = { RequestMethod.GET, RequestMethod.POST })
    public String kakaoLogin(@RequestParam("code") String code) {
        System.out.println(code);
        return "userMainPage";
    }


}
