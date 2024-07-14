package com.poly.models;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StaffVip {
	private String fullname;
	private Date birthday;
	private boolean gender;
	private String country;
	private boolean married;
	private String[] hobbies;
	private String notes;
	public String formatedDate;
	
	public String photo_file;



	public String getFullname() {
		return fullname;
	}

	

	public String getPhoto_file() {
		return photo_file;
	}

	public void setPhoto_file(String photo_file) {
		this.photo_file = photo_file;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public boolean isMarried() {
		return married;
	}

	public void setMarried(boolean married) {
		this.married = married;
	}

	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	public String getFormatedDate() {
		return convertdate();
	}

	public void setFormatedDate() {
		this.formatedDate = convertdate();
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String convertHobbies() {
		StringBuilder sb = new StringBuilder();
		for (String sothich : hobbies) {
			sb.append(sothich).append(", ");
		}
		String sothichConverted = "";
		if (sb.toString() != "") {
			sothichConverted = sb.toString().substring(0, sb.toString().lastIndexOf(",")) + ".";
		}
		return sothichConverted;
	}
	
	

	public String convertdate() {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		String format = formatter.format(birthday);
		return format;

	}

	public String convertGender() {
		String gioitinh = "";
		return gioitinh = !gender ? "Nữ" : "Nam";
	}
	public String status() {
		String statuString="";
		return statuString =!married? "Chưa kết hôn" :"Đã kết hôn";
		}
	}
