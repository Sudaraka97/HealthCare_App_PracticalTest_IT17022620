package com.rest.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class AppointmentModel {

	private int appointementId;
	private String Name;
	private String date;
	private String time;
	private String doctor_name;
	private String email;
	private String contactNum;
	private String Hospital_Name;
	
	public int getAppointementId() {
		return appointementId;
	}
	public void setAppointementId(int appointementId) {
		this.appointementId = appointementId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	public String getHospitalName() {
		return Hospital_Name;
	}
	public void setHospitalName(String Hospital_Name) {
		this.Hospital_Name = Hospital_Name;
	}
	
	
}
