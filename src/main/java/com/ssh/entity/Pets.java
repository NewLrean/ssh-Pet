package com.ssh.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "pets")
public class Pets {
	@Id
    @GeneratedValue
    private Integer id;
	
	@Column(name="petname")
	private String petname;
	
	@Column(name="pettype")
	private String pettype;
	
	@Column(name="petimg")
	private String petimg;
	
	@Column(name="petinfor")
	private String petinfor;
	
	@Column(name="petprice")
	private Double petprice;
	
	@Column(name="place")
	private String place;
	
	@Column(name="petcount")
	private String petcount;

	@Column(name="petnumber")
	private String petnumber;
	
	
	public String getPetnumber() {
		return petnumber;
	}

	public void setPetnumber(String petnumber) {
		this.petnumber = petnumber;
	}

	public String getPetcount() {
		return petcount;
	}

	public void setPetcount(String petcount) {
		this.petcount = petcount;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPetname() {
		return petname;
	}

	public void setPetname(String petname) {
		this.petname = petname;
	}

	public String getPettype() {
		return pettype;
	}

	public void setPettype(String pettype) {
		this.pettype = pettype;
	}

	public String getPetimg() {
		return petimg;
	}

	public void setPetimg(String petimg) {
		this.petimg = petimg;
	}

	public String getPetinfor() {
		return petinfor;
	}

	public void setPetinfor(String petinfor) {
		this.petinfor = petinfor;
	}

	public Double getPetprice() {
		return petprice;
	}

	public void setPetprice(Double petprice) {
		this.petprice = petprice;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	
	
	
}
