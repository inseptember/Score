package org.wf.score.account.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.wf.score.account.entity.User;
import org.wf.score.account.service.UserService;

@Controller
public class UsersController {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping(value = "/users/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<User> users = userService.getUsers();
		model.addAttribute("userList", users);
		return "account/users/list";
	}

}
