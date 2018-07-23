package com.ssh.entity;

import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "orders")
public class Orders{
	@Id
	@GeneratedValue
	private Integer order_id;
	
	@Column(name="userid")
	private Integer userid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="remark")
	private int remark;
	
	@Column(name="time")
	private String time;
	
	@Column(name="totalPrice")
	private Double totalPrice;
	
	@Column(name="address")
	private  String address;
	
	
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	

	public int getRemark() {
		return remark;
	}

	public void setRemark(int remark) {
		this.remark = remark;
	}

	

	

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	

}
