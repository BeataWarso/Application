package pl.coderslab.controller;

import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserRole;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.repository.UserRolerRepository;

@Controller
public class RegisterController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserRolerRepository userRolerRepository;

	@GetMapping("/rejestracja")
	public String register(Model model) {
		return "rejestracja2";
	}

	@PostMapping("/rejestracja")
	public String register(HttpServletRequest request) {

		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");

		String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));

		User user = new User();
		user.setUsername(username);
		user.setPassword(hashed);
		user.setEnabled(true);

		userRepository.save(user);

		UserRole userRole = new UserRole(user, "ROLE_USER");

		userRolerRepository.save(userRole);

		return "properRegister";
	}

}
