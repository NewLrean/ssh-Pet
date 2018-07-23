package com.ssh.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "address")
public class Address {
	 @Id
	    @GeneratedValue
	    private Integer id;
	 
	 @Column(name ="consignee")
	    private String consignee;
	    

	    @Column(name="area")
	    private String area;
	    
	    @Column(name = "detailed")
	    private String detailed;
	    
	    @Column(name ="phone1")
	    private String phone1;
	    
	    @Column(name="acquiescence")
	    private int acquiescence;

	    @Column(name="userid")
	    private int userid;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getConsignee() {
			return consignee;
		}

		public void setConsignee(String consignee) {
			this.consignee = consignee;
		}

		public String getArea() {
			return area;
		}

		public void setArea(String area) {
			this.area = area;
		}

		public String getDetailed() {
			return detailed;
		}

		public void setDetailed(String detailed) {
			this.detailed = detailed;
		}

		public String getPhone1() {
			return phone1;
		}

		public void setPhone1(String phone1) {
			this.phone1 = phone1;
		}

		public int getAcquiescence() {
			return acquiescence;
		}

		public void setAcquiescence(int acquiescence) {
			this.acquiescence = acquiescence;
		}

		public int getUserid() {
			return userid;
		}

		public void setUserid(int userid) {
			this.userid = userid;
		}
	    
}
