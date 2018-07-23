package com.ssh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.OrderDao;
import com.ssh.entity.OrderPet;
import com.ssh.entity.Orders;
import com.ssh.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	
	OrderDao orderDao;
	
	@Override
	public List<Orders> selectorderid(int userid) {
		// TODO Auto-generated method stub
		return orderDao.selectorderid(userid);
	}

	@Override
	public int seOrders() {
		// TODO Auto-generated method stub
		return orderDao.seOrders();
	}

	@Override
	public List<OrderPet> selectorderpetid(int order_id) {
		// TODO Auto-generated method stub
		return orderDao.selectorderpetid(order_id);
	}

}
