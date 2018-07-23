package com.ssh.service;

import java.util.List;

import com.ssh.entity.Address;

public interface CarbuyService {
	void saveorders(int order_id,String address ,String time,String name,String phone,int remark,double totalPrice,int userid);

	void setorderpet(int amount,String orderdate,int petid,int order_id,double unitprice);
	
	void setaddre(String consignee,String area,String detailed,String phone1,int acquiescence,int userid);
	
	List<Address> selectuserid(Integer id);
	
	void deleteadd(int id);
	
	List<Address> selectaddid(Integer id);
}
