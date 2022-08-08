package mockproject.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "HomeControllerForAdmin")
public class HomeController {
	
	@RequestMapping(value = "/admin")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}
}
