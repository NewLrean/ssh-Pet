package com.ssh.dao;

import java.util.List;

import com.ssh.entity.OrderPet;
import com.ssh.entity.Orders;

public interface OrderDao {
	List<Orders> selectorderid(int userid);
	
	int seOrders();
	
	List<OrderPet> selectorderpetid(int order_id);
}
