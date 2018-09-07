package VO;

import java.io.Serializable;

public class submitjobVO implements Serializable{

	private int event_id;  
	private int manager_id;
	
	
	public int getManager_id() {
		return manager_id;
	}
	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getEventname() {
		return eventname;
	}
	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getJobcategory() {
		return jobcategory;
	}
	public void setJobcategory(String jobcategory) {
		this.jobcategory = jobcategory;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getEventdes() {
		return eventdes;
	}
	public void setEventdes(String eventdes) {
		this.eventdes = eventdes;
	}
	private String eventname;
	private String num;
	private String location;
	private String jobcategory;
	private String date;
	private String day;
	private String starttime;
	private String endtime;
	private String eventdes;


}
