package VO;

import java.io.Serializable;

public class applyEmployeeJobVO implements Serializable {

	
	private int jobapplication_id;
	
	public int getJobapplication_id() {
		return jobapplication_id;
	}
	public void setJobapplication_id(int jobapplication_id) {
		this.jobapplication_id = jobapplication_id;
	}
	private int event_id;
	private int user_id;
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	
	
}
