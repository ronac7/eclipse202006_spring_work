package a.b.c.com.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import a.b.c.com.dao.AutowiredDAO;
import a.b.c.com.vo.FormDataVO;

@Service
@Transactional
public class AutowiredServiceImpl implements AutowiredService {
	private Logger logger = Logger.getLogger(AutowiredServiceImpl.class);
	
	
	// AutowiredService 서비스 클래스를 스프링 프레임워크에서 인스턴스 할 때
	// AutowiredService 서비스 클래스 이름의 첫번째 이니셜을 소문자로 변경해서 인스턴스한다.
	// AutowiredService autowiredService = new AutowiredServiceImpl();
	final private AutowiredDAO autowiredDAO;
	
	@Autowired(required=false)
	public AutowiredServiceImpl(AutowiredDAO autowiredDAO) {
		this.autowiredDAO = autowiredDAO;
	}
	
	@Override
	public List<FormDataVO> autowiredTest(FormDataVO fvo) {
		// TODO Auto-generated method stub
		
		List<FormDataVO> list = autowiredDAO.autowiredTest(fvo);
		
		return list;
	}

}
