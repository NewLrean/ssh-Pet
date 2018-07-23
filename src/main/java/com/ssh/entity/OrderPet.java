package com.ssh.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Orderpet")
public class OrderPet {

    @Id
    @GeneratedValue
    private Integer id;
    
    @Column(name ="petid")
    private Integer petid;
    
    @Column(name ="order_id")
    private Integer order_id;
    
    @Column(name="unitprice")
    private Double unitprice;
    
    @Column(name = "amount")
    private Integer amount;
    
    @Column(name ="orderdate")
    private String orderdate;
 
    
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}


	public Integer getPetid() {
		return petid;
	}

	public void setPetid(Integer petid) {
		this.petid = petid;
	}

	

	public Double getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(Double unitprice) {
		this.unitprice = unitprice;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
    
    
}
