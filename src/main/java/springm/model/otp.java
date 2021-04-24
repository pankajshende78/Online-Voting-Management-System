package springm.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class otp {
	
	
	@Id
	int id;
	String otp;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	
	
	@Override
	public String toString() {
		return "otp [id=" + id + ", otp=" + otp + "]";
	}
	
	
	
	

}
