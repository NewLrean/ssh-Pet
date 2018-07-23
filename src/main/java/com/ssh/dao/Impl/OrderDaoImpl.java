package com.ssh.dao.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssh.dao.OrderDao;
import com.ssh.entity.Address;
import com.ssh.entity.OrderPet;
import com.ssh.entity.Orders;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
    private SessionFactory sessionFactory; 
	
	
	private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }


	@Override
	public List<Orders> selectorderid(int userid) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(Orders.class);
		 criteria.add(Restrictions.like("userid", userid));
		List<Orders> list=criteria.list();
		return list;
		
	}


	@Override
	public int seOrders() {
		// TODO Auto-generated method stub
		String sql="SELECT MAX(order_id) FROM orders";
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		Integer id=(Integer) query.uniqueResult();
		if((Object)id==null){
			id=13113;
			return id;
		}
		else{
		return ++id;
		}
		
	}


	@Override
	public List<OrderPet> selectorderpetid(int order_id) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(OrderPet.class);
		 criteria.add(Restrictions.like("order_id", order_id));
		List<OrderPet> list=criteria.list();
		return list;
	}

	
	

}
