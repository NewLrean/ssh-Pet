package com.ssh.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
	@Entity
	@Table(name = "Person")
	public class Person {

	    @Id
	    @GeneratedValue
	    private Integer id;

	    @Column(name = "username")
	    private String username;

	    @Column(name = "password")
	    private String password;
	    
	    @Column(name = "address")
	    private String address;

	    @Column(name = "phone")
	    private String phone;
	    
	    @Column(name = "email")
	    private String email;
	    
	    @Column(name= "personimg")
	    private String personimg;
	    
	    @Column(name = "birth")
	    private String birth;
	    
	    @Column(name = "realname")
	    private String realname;
	    
	    @Column(name = "sex")
	    private Integer sex;
	    
		public String getPersonimg() {
			return personimg;
		}

		public void setPersonimg(String personimg) {
			this.personimg = personimg;
		}

		public String getBirth() {
			return birth;
		}

		public void setBirth(String birth) {
			this.birth = birth;
		}

		public String getRealname() {
			return realname;
		}

		public void setRealname(String realname) {
			this.realname = realname;
		}

		public Integer getSex() {
			return sex;
		}

		public void setSex(Integer sex) {
			this.sex = sex;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
	    
}
