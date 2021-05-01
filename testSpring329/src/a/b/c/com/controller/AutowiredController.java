package a.b.c.com.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import a.b.c.com.service.AutowiredService;
import a.b.c.com.vo.FormDataVO;

//현업에서 서버는 
//개발서버(개발로그 콘솔에 찍는다) --> 스테이징서버(리얼서버와 똑 같은 환경) --> 리얼서버(로그를 로그파일에 쓴다.) 
//개발서버에서 개발해서 단위 테스트를 완료 하고 연계 테스트(통합테스트)가 완료되면
//운영팀의 허락을 득 하고 (문서로)
//스테이징서버에서 테스트를 한다. 
//스테이지 서버에서 테스트가 통과 되면
//운영팀의 허락을 득 하고 (문서로)
//리얼서버에 포팅한다.

// Controller -> Service -> Repository
@Controller
public class AutowiredController {
	private Logger logger = Logger.getLogger(AutowiredController.class);
	
	/*
	 * Autowired DI (Dependency Injection) : VO (DTO) 에 데이터를 초기화 하는 행위
	 * 1. 필드 주입
	 *    	: @Autowired
	 *    	: final private AutowiredService autowiredService;
	 *      
	 * 2. setter 주입 (함수에 주입)
	 * 		: @Autowired
	 * 		: public String autowiredTest_Get(FormDataVO fvo, Model model) {}
	 * 
	 * 3. 생성자 주입
	 * 		: @Autowired(required=false)
	 * 		: public AutowiredController(AutowiredService autowiredService) {
	 * 			this.autowiredService = autowiredService; }
	 * 
	 * required=ture : 디폴트 : Autowired 하려는 bean(컴포넌트 : Service 클래스, DAO 클래스)이 null 이면 에러 발생
	 * required=false : Autowired 하려는 bean(컴포넌트 : Service 클래스, DAO 클래스)이 null 이어도 에러 발생하지 않는다.
	 *  
	 * */
	
	// AutowiredService 서비스 클래스를 스프링 프레임워크에서 인스턴스 할 때
	// AutowiredService 서비스 클래스 이름의 첫번째 이니셜을 소문자로 변경해서 인스턴스한다.
	// AutowiredService autowiredService = new AutowiredServiceImpl();
	
	// private 꼭 붙여서 사용하기!
	final private AutowiredService autowiredService;
		
	
	// 생성자 주입
	@Autowired(required=false)
	public AutowiredController(AutowiredService autowiredService) {
		this.autowiredService = autowiredService;
	}
	
	@RequestMapping(value="autowiredTest", method=RequestMethod.GET)
	public String autowiredTest() {
		
		return "autowired/autowiredTest";
	}
	
	@RequestMapping(value="autowiredtest_get", method=RequestMethod.GET)
	public String autowiredTest_Get(FormDataVO fvo, Model model) {
		
		List<FormDataVO> list = autowiredService.autowiredTest(fvo);
		int listSize = list.size();
		
		logger.info("listSize >>> : " + listSize);
		System.out.println("listSize >>> : " + listSize);
		
		model.addAttribute("list", list);
		
		return "autowired/autowiredtest_get";
	}
}
