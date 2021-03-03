package edu.human.com.home.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

@Controller
public class HomeController {
	
	@RequestMapping("/tiles/board/list_board.do")
	public String list_board() throws Exception {
		
		return "board/list_board.tiles";
	}
	@RequestMapping("/tiles/login.do")
	public String login() throws Exception {
		return "login.tiles";
	}
	
	@RequestMapping("/logout.do")
	public String logout() throws Exception {
		RequestContextHolder.getRequestAttributes().removeAttribute("LoginVO", RequestAttributes.SCOPE_SESSION);
		return "redirect:/";
	}
	//method.RequestMethod=GET[POST] 없이사용하면, 둘다 허용되는 매핑이됨
	@RequestMapping("/tiles/home.do")
	public String home() throws Exception {
		
		return "home.tiles";
	}
}