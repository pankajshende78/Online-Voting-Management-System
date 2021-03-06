package springm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.boot.jaxb.hbm.spi.JaxbHbmToolingHintType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import springm.dao.UserDao;
import springm.model.Contact;
import springm.model.NewElecCandi;
import springm.model.VotersEntity;
import springm.model.candivote;
import springm.model.newregister;
import springm.model.requestID;
import springm.service.UserService;

@Controller
public class admincontroller {

	@Autowired
	private UserService user;

	@RequestMapping("/newcandidate")
	public String newelection() {
		return "newcandidate";
	}

	@RequestMapping("/voters")
	public String voters() {
		return "voters";
	}

	@RequestMapping("/voterlist")
	public String voterlist() {
		return "IDVoters";
	}

	@RequestMapping(path = "/savecandidate", method = RequestMethod.POST)
	public RedirectView SaveCandidate(@ModelAttribute NewElecCandi elecCandi, HttpServletRequest request)
			throws IOException {

		int id = user.savecandidate(elecCandi);

		if (id > 0) {

			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/adminpage");
			return redirectView;
		} else {

			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/error");
			return redirectView;
		}

	}

	@RequestMapping(path = "/voters", method = RequestMethod.POST)
	public RedirectView savevoter(@ModelAttribute VotersEntity votersEntity, HttpServletRequest request) {

		int id = user.voters(votersEntity);

		if (id > 0) {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/adminpage");
			return redirectView;
		} else {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/error");
			return redirectView;
		}

	}

	@RequestMapping("/voterlists")
	public String voterlist(Model m) {

		List<VotersEntity> viewvoter = user.getproduct();
		m.addAttribute("viewvoter", viewvoter);

		return "IDVoters";
	}

	@RequestMapping("/viewvoterlist")
	public String getvoters(Model m) {

		List<VotersEntity> viewvoter = user.getproduct();
		m.addAttribute("viewvoter", viewvoter);

		return "viewvoterlist";
	}

	@RequestMapping("/result")
	public String getList(Model m) {

		List<candivote> view = user.getlist();

		m.addAttribute("view", view);

		return "result";
	}

	@RequestMapping("/givevote")
	public String givevote(Model m) {

		List<NewElecCandi> usercandi = user.getcandi();
		m.addAttribute("usercandi", usercandi);

		return "givevote";
	}

	@RequestMapping(path = "/checkid", method = RequestMethod.POST)
	public String checkid(@ModelAttribute VotersEntity votersEntity, newregister newregister, Model m,
			HttpServletRequest request) {
		String name = user.CheckName(newregister);
		String id = user.checkid(votersEntity);
		if (name == "success") {

			return "givevote";

		}

		if (id == "success") {

			int deleteid = votersEntity.getId();
			this.user.deleteCheckid(deleteid);

			List<NewElecCandi> list = this.user.getcandi();
			m.addAttribute("list", list);

			return "vote";

		} else {
			return "userError";

		}

	}

	@RequestMapping("/candidatedata")
	public String candidateData(Model m) {
		List<NewElecCandi> list = this.user.getcandi();
		m.addAttribute("list", list);

		return "candidateData";
	}

	@RequestMapping("/userError")
	public String userError() {
		return "userError";
	}

	@RequestMapping("/Givevotelogin")
	public String Givevotelogin() {
		return "GiveVoteLogin";
	}

	@RequestMapping("/vote")
	public String vote() {
		return "vote";
	}

	@RequestMapping(path = "/voteing", method = RequestMethod.POST)
	public RedirectView voteing(@ModelAttribute candivote candivote, HttpServletRequest request) {
		int id = user.candidatesave(candivote);
		if (id > 0) {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/userlogin");
			return redirectView;
		} else {
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/vote");
			return redirectView;
		}

	}

	@RequestMapping("/viewloginuser")
	public String viewlog(Model m) {
		List<newregister> newlogdata = this.user.getlog();
		m.addAttribute("newlogdata", newlogdata);
		return "viewloginuser";

	}

	@RequestMapping("/Conttab")
	public String getcont(Model m) {
		List<Contact> cont = this.user.getcont();
		m.addAttribute("cont", cont);
		return "ContactTable";

	}

	@RequestMapping("/checkrequest")
	public String getreqdata(Model m) {
		List<requestID> conts = this.user.getreq();
		m.addAttribute("conts", conts);
		return "requestContactTable";

	}

	@RequestMapping("/delete/{Id}")
	public RedirectView deleteProduct(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deletedata(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/Conttab");
		return redirectView;
	}

	@RequestMapping("/deleted/{Id}")
	public RedirectView deleterequest(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deletereq(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/checkrequest");
		return redirectView;
	}

	@RequestMapping("/delres/{Id}")
	public RedirectView deleteres(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deleteres(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/result");
		return redirectView;
	}

	@RequestMapping("/deletelogin/{Id}")
	public RedirectView deleteloginUser(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deletedataLogin(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/viewloginuser");
		return redirectView;
	}

	@RequestMapping("/deletecandi/{Id}")
	public RedirectView deletecandi(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deletecandi(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/candidatedata");
		return redirectView;
	}

	@RequestMapping("/deletevoter/{Id}")
	public RedirectView deletevoter(@PathVariable("Id") int id, HttpServletRequest request) {
		this.user.deletevoter(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/voterlists");
		return redirectView;
	}

	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model model) {

		NewElecCandi candi = this.user.loadcandi(pid);
		model.addAttribute("candi", candi);
		return "updateform";
	}

	@RequestMapping("/loadcandi")
	public String loadnewcandi(Model m) {
		List<NewElecCandi> candilist = this.user.getcandi();
		m.addAttribute("c", candilist);

		return "view_candi_data";
	}

}
