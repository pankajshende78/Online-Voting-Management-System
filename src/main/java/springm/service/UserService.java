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

	public List<Contact> getcont() {
		return this.userdao.getcont();
	}

	public void deletedata(int id) {
		this.userdao.deletedata(id);
	}
	
	
	public void deleteCheckid(int deleteid)
	{
		this.userdao.deleteCheckid(deleteid);
	}

	public void deletedataLogin(int id) {
		this.userdao.deletedataLogin(id);
	}

}
