package mockproject.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "controllerForWeb")
public class HomeController {
	
	
	
	@RequestMapping("/home")
	public String home2() {
		return "web/home";
	}
	
	

}
