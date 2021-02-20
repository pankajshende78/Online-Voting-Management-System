package springm.dao;

import java.util.List;

import javax.persistence.Lob;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.context.spi.CurrentSessionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.query.Query;
import org.hibernate.sql.ordering.antlr.Factory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import springm.model.Contact;
import springm.model.NewElecCandi;
import springm.model.VotersEntity;
import springm.model.candivote;
import springm.model.newregister;

@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public int SaveUser(newregister newregister) {
		Integer id = (Integer) this.hibernateTemplate.save(newregister);
		return id;
	}

	@Transactional
	public int savecon(Contact contact) {
		Integer id = (Integer) this.hibernateTemplate.save(contact);
		return id;
	}

	@Transactional
	public int savecandidatedao(NewElecCandi newElecCandi) {
		Integer id = (Integer) this.hibernateTemplate.save(newElecCandi);
		return id;
	}

	@Transactional

	public int savevoter(VotersEntity votersEntity) {
		Integer id = (Integer) this.hibernateTemplate.save(votersEntity);
		return id;
	}

	@Transactional
	public int candisave(candivote candivote) {
		Integer id = (Integer) this.hibernateTemplate.save(candivote);
		return id;

	}

	@Transactional
	public String checklogin(newregister newregister) {

		String email = newregister.getEmail();
		String password = newregister.getPassword();

		Session s = sessionFactory.getCurrentSession();

		String q = "from newregister as s where s.email=:email and s.password=:password";

		Query query = s.createQuery(q);

		query.setParameter("email", newregister.getEmail());
		query.setParameter("password", newregister.getPassword());

		List r = query.list();

		if (r != null && (r.size() > 0)) {
			return "success";
		} else {
			return "fail";
		}

	}

	public List<VotersEntity> getvoters() {

		List<VotersEntity> Voters = this.hibernateTemplate.loadAll(VotersEntity.class);
		return Voters;

	}

	@Transactional
	public List<candivote> checkvote() {
		
		List<candivote> list = this.hibernateTemplate.loadAll(candivote.class);

		List<candivote> check = this.hibernateTemplate.loadAll(candivote.class);

		return list;

	}

	public List<NewElecCandi> getcandi() {
		List<NewElecCandi> candi = this.hibernateTemplate.loadAll(NewElecCandi.class);
		return candi;
	}

	public List<newregister> getlog() {
		List<newregister> log = this.hibernateTemplate.loadAll(newregister.class);
		return log;
	}

	public List<Contact> getcont() {
		List<Contact> cont = this.hibernateTemplate.loadAll(Contact.class);
		return cont;
	}

	public NewElecCandi loadcandi(int pid) {

		return this.hibernateTemplate.get(NewElecCandi.class, pid);

	}

	@Transactional
	public void deletedata(int id) {

		Contact c = this.hibernateTemplate.load(Contact.class, id);
		this.hibernateTemplate.delete(c);
	}

	@Transactional
	public void deletedataLogin(int id) {

		newregister n = this.hibernateTemplate.load(newregister.class, id);
		this.hibernateTemplate.delete(n);
	}

	@Transactional
	public String checkid(VotersEntity votersEntity) {

		int id = votersEntity.getId();
		Session s = sessionFactory.getCurrentSession();
		String q = "from VotersEntity as s where s.id=:id";
		Query query = s.createQuery(q);
		query.setParameter("id", votersEntity.getId());

		List r = query.list();

		if (r != null && (r.size() > 0)) {
			return "success";
		} else {
			return "fail";
		}

	}

}
