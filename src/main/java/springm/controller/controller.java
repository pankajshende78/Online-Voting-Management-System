package springm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import springm.model.Contact;
import springm.model.VotersEntity;
import springm.model.newregister;
import springm.service.UserService;

@Controller
public class controller {

	@Autowired
	private UserService user;

	@RequestMapping("/")
	public String firstpage() {
		return "homepage";
	}

	@RequestMapping("/newregister")
	public String newregistration() {
		return "newregistration";
	}

	@RequestMapping("/error")
	public String error() {
		return "error";
	}

	@RequestMapping(path = "/savenewregister", method = RequestMethod.POST)
	public RedirectView savenewregister(@ModelAttribute newregister newregister, HttpServletRequest request) {

		String password = newregister.getPassword();
		String repassword = newregister.getRepassword();

		if (password.equals(repassword)) {

			int id = user.createUser(newregister);
			if (id > 0) {

				RedirectView redirectView = new RedirectView();
				redirectView.setUrl(request.getContextPath() + "/");
				return redirectView;
			} else {

				RedirectView redirectView = new RedirectView();
				redirectView.setUrl(request.getContextPath() + "/error");
				return redirectView;
			}
		} else {

			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/error");
			return redirectView;
		}

	}

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute newregister newregister, HttpServletRequest request, Model m) {

		if (newregister.getEmail().equals("admin@ad") && newregister.getPassword().equals("admin")) {

			return "adminpage";
		} else {
			String id = user.checkservuser(newregister);

			if (id == "success") {

				return "userlogin";
			} else {

				return "error";
			}
		}
	}

	@RequestMapping("/userlogin")
	public String Userlogin() {
		return "userlogin";
	}

	@RequestMapping("/adminpage")
	public String adminlogin() {
		return "adminpage";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping("/contact")
	public String cont() {
		return "contact";
	}

	@RequestMapping(path = "/savecont", method = RequestMethod.POST)
	public RedirectView savecontact(@ModelAttribute Contact contact, HttpServletRequest request) {

		int id = this.user.savecont(contact);

		if (id > 0) {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/userlogin");
			return redirectView;
		} else {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/error");
			return redirectView;
		}

	}

}
