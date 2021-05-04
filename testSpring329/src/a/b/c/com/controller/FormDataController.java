package a.b.c.com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import a.b.c.com.vo.FormDataVO;

@Controller
public class FormDataController {
	
	@RequestMapping(value="formdata_find", method=RequestMethod.GET)
	public String formdata() {
		
		return "mvc/formdata_return";
	}
	
	// 이전 Servlet 방식
	@RequestMapping(value="formdata_get", method=RequestMethod.GET)
	public String formdataGet(HttpServletRequest req) {
		// 이런식으로 request 객체 바로 받을 수 있다!!
		
		String datanum = req.getParameter("datanum");
		String dataid = req.getParameter("dataid");
		String datapw = req.getParameter("datapw");
		String dataname = req.getParameter("dataname");
		System.out.println("datanum >>> : " + datanum);
		System.out.println("dataid >>> : " + dataid);
		System.out.println("datapw >>> : " + datapw);
		System.out.println("dataname >>> : " + dataname);
		
		return "mvc/formdataGet";
	}
	
	// 스프링 Web MVC 방식으로 바꾸기 	
	@RequestMapping(value="formdata_get_spring", method=RequestMethod.GET)
	public String formdataGet_Spring(FormDataVO fvo, Model m) {
		
		// Model 객체는 View 페이지에 데이터 전달하는 용도로 사용한다.
		// Model 객체를 사용할 때에는 String 리턴형으로 View 페이지를 전달한다.(정한다.)
		
		System.out.println("formdataGet_Spring() >>> : " + fvo);
		System.out.println("fvo.getDatanum() >>> : " + fvo.getDatanum());
		System.out.println("fvo.getDataid() >>> : " + fvo.getDataid());
		System.out.println("fvo.getDatapw() >>> : " + fvo.getDatapw());
		System.out.println("fvo.getDataname() >>> : " + fvo.getDataname());
		
		m.addAttribute("fvooo", fvo);
		
		return "mvc/formdatagetspring";
	}
	
	@RequestMapping(value="formdata_post_spring", method=RequestMethod.POST)
	public String formdataPost_Spring(@ModelAttribute("ma_fvo1") FormDataVO fvo1) {
//		@ModelAttribute 매핑을 한다.fvo1
//		ma_fvo1 선언하고 addAtribute 한 것과 같은 결과
		return "mvc/formdatapostspring";
	}
	
	@RequestMapping(value="formdata_post_spring_111", method=RequestMethod.POST)
	public String formdataPost_Spring_111(FormDataVO fvo2) {

		return "mvc/formdatapostspring_111";
	}

}
