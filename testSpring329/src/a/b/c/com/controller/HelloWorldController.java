package a.b.c.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


// 사용자 정의 HelloWorldController의 결과는
// 디스패쳐 서블릿으로 리턴한다!
@Controller
public class HelloWorldController {
	
	@RequestMapping("helloWorld_Controller_find")
	public String helloWorld(Model model) {
		
		model.addAttribute("message", "Hello World Spring!!!! again >>>> : ");
		
		return "helloWorld_return_jspfile_name";
	}
	
	// 매핑으로 찾을 이름값 = value 에다가 method 방식이 GET 이라는 정보도 추가
	@RequestMapping(value="helloWorld_get", method=RequestMethod.GET)
    public String testGet(Model m) {
		
		m.addAttribute("msg", "RequestMethod GET 방식 msg 값!!");
		
		return "helloGet";
	}
	
	
	@RequestMapping(value="helloWorld_post", method=RequestMethod.POST)
	public String testPost(Model m) {
	
		m.addAttribute("msg", "RequestMethod POST 방식 msg 값!!!");
		
		return "helloPost";
	}
	
	
}