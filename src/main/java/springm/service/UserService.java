package springm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springm.dao.UserDao;
import springm.model.Contact;
import springm.model.NewElecCandi;
import springm.model.VotersEntity;
import springm.model.candivote;
import springm.model.newregister;

import springm.model.requestID;

@Service
public class UserService {

	@Autowired
	private UserDao userdao;

	
	
	
	public int createUser(newregister newregister) {

		return this.userdao.SaveUser(newregister);
	}

	public String checkservuser(newregister newregister) {
		return this.userdao.checklogin(newregister);

	}
	
	public String CheckName(newregister newregister) {
		return this.userdao.checkname(newregister);

	}

	public String checkid(VotersEntity votersEntity) {
		return this.userdao.checkid(votersEntity);
	}

	public int candidatesave(candivote candivote) {
		return this.userdao.candisave(candivote);
	}

	public int savecandidate(NewElecCandi newElecCandi) {
		return this.userdao.savecandidatedao(newElecCandi);
	}

	public int voters(VotersEntity votersEntity) {
		return this.userdao.savevoter(votersEntity);
	}

	public List<VotersEntity> getproduct() {

		return this.userdao.getvoters();
	}

	public List<candivote> getlist() {

		return this.userdao.checkvote();
	}

	public NewElecCandi loadcandi(int pid) {

		return this.userdao.loadcandi(pid);
	}

	public List<NewElecCandi> getcandi() {
		return this.userdao.getcandi();
	}

	public List<newregister> getlog() {
		return this.userdao.getlog();
	}

	public int savecont(Contact contact) {
		return this.userdao.savecon(contact);
	}


	public int saveRequest(requestID requestID) {
		return this.userdao.saveRequest(requestID);
	}
	
	public List<Contact> getcont() {
		return this.userdao.getcont();
	}
	
	public List<requestID> getreq() {
		return this.userdao.getreq();
	}

	public void deletedata(int id) {
		this.userdao.deletedata(id);
	}
	public void deletecandi(int id) {
		this.userdao.deletecandi(id);
	}
	public void deletereq(int id) {
		this.userdao.deletereq(id);
	}
	public void deletevoter(int id) {
		this.userdao.deletevoter(id);
	}
	public void deleteres(int id) {
		this.userdao.deleteres(id);
	}
	
	public void deleteCheckid(int deleteid)
	{
		this.userdao.deleteCheckid(deleteid);
	}

	public void deletedataLogin(int id) {
		this.userdao.deletedataLogin(id);
	}

}
