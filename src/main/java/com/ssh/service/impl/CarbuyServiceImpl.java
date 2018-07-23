package com.ssh.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.CarbuyDao;
import com.ssh.dao.PersonDao;
import com.ssh.entity.Address;
import com.ssh.repository.PersonRepository;
import com.ssh.service.CarbuyService;

@Service
public class CarbuyServiceImpl implements CarbuyService {

	@Autowired
    private PersonRepository personRepository;

	@Autowired	
	CarbuyDao carbuydao;

	
	@Override
	public void setaddre(String consignee, String area, String detailed, String phone1, int acquiescence, int userid) {
		// TODO Auto-generated method stub
		this.carbuydao.setaddre(consignee, area, detailed, phone1, acquiescence, userid);
	}

	@Override
	public List<Address> selectuserid(Integer id) {
		// TODO Auto-generated method stub
		return carbuydao.selectuserid(id);
	}

	@Override
	public void deleteadd(int id) {
		// TODO Auto-generated method stub
		this.carbuydao.deleteadd(id);
	}

	@Override
	public List<Address> selectaddid(Integer id) {
		// TODO Auto-generated method stub
		return carbuydao.selectaddid(id);
	}

	@Override
	public void saveorders(int order_id,String address, String time, String name, String phone, int remark, double totalPrice,
			int userid) {
		// TODO Auto-generated method stub
		this.carbuydao.saveorders(order_id, address, time, name, phone, remark, totalPrice, userid);
	}

	@Override
	public void setorderpet(int amount, String orderdate, int petid, int order_id, double unitprice) {
		// TODO Auto-generated method stub
		this.carbuydao.setorderpet(amount, orderdate, petid, order_id, unitprice);
	}

	
	
	
}
