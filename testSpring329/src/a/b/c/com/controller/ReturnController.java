package a.b.c.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReturnController {
	
	@RequestMapping("viewJsp_1_stringTest_find")
	public String stringTest(Model m) {
		/*
		 * 데이터는 Model.addAttribute(key, value);
		 * view 리턴은 함수 리턴형을 String 으로 해서 String return value 로 했다.
		 */
		m.addAttribute("m", "view에 데이터 전달을 할 때는 가능하면 Model 인터페이스를 사용하자!");
		
		// 리턴 view 페이지는 String 리턴 타입을 사용하자!
		return "viewJsp_1_stringTest";
	}
	
	@RequestMapping("viewJsp_2_modelandview_find")
	public ModelAndView modelandviewTest() {
		/*
		 * 컨트롤러에서 view 리턴을 ModelAndView 클래스를 사용했다.
		 * addObject : 데이터
		 * setViewName : view 페이지 리턴
		 */
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("modelandview", "ModelAndView_return_data");
		mv.setViewName("viewJsp_2_modelandview");
		
		return mv;
	}
	
	@RequestMapping("viewJsp_3_voidTest_find")
	public void voidTest(Model md) {
		md.addAttribute("mmmm", "스프링에서는 void 리턴형도 리턴이 된다! 단, 요청 url 이름과 view 이름이 같아야 한다는 조건이 있다!");
	}

}
