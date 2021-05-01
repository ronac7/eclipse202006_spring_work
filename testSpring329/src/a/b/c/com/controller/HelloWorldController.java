package a.b.c.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


// 사용자 정의 HelloWorldController의 결과는
// 디스패쳐 서블릿으로 리턴한다!
@Controller
public class HelloWorldController {

	@RequestMapping("helloWorld")
	public String helloWorlds(Model model) {
		model.addAttribute("message", "Hello World Spring!!!!");
		return "helloWorld";
	}
	
	@RequestMapping("helloWorld_Controller_find")
	public String helloWorld(Model model) {
		
		model.addAttribute("message", "Hello World Spring!!!! again >>>> : ");
		
		return "helloWorld_return_jspfile_name";
	}
	
	@RequestMapping(value="helloWorld_get", method=RequestMethod.GET)
    public String testGet(Model m) {
		
		m.addAttribute("msg", "RequestMethod GET 방식 >>> : ");
		
		return "helloGet";
	}
	
	
	@RequestMapping(value="helloWorld_post", method=RequestMethod.POST)
	public String testPost(Model m) {
	
		m.addAttribute("msg", "RequestMethod POST 방식 >>> : ");
		
		return "helloPost";
	}
	
	
}