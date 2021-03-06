package springm.controller;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javassist.Loader.Simple;
import springm.model.Contact;
import springm.model.NewElecCandi;
import springm.model.VotersEntity;
import springm.model.newregister;

import springm.model.requestID;
import springm.service.UserService;

@Controller
public class controller {

	@Autowired
	private UserService user;

	@RequestMapping("/")
	public String firstpage() {
		return "index";
	}

	@RequestMapping("/b")
	public String back() {
		return "index";
	}

	@RequestMapping("/homepage")
	public String login() {
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

	@RequestMapping("/requestforid")
	public String requestid() {
		return "RequestID";
	}

	@RequestMapping(path = "/savenewregister", method = RequestMethod.POST)
	public RedirectView savenewregister(@ModelAttribute newregister newregister, HttpServletRequest request) {

		String password = newregister.getPassword();
		String repassword = newregister.getRepassword();

		if (password.equals(repassword)) {

			int id = user.createUser(newregister);

			if (id > 0) {

				RedirectView redirectView = new RedirectView();
				redirectView.setUrl(request.getContextPath() + "/homepage");
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

		if (newregister.getEmail().equals("admin@ad") && newregister.getPassword().equals("qwerty@123")) {

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

	@RequestMapping(path = "/request", method = RequestMethod.POST)
	public RedirectView saverequest(@ModelAttribute requestID requestID, HttpServletRequest request) {

		int id = this.user.saveRequest(requestID);

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
