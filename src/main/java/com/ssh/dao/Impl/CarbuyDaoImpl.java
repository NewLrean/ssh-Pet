package com.ssh.dao.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssh.dao.CarbuyDao;
import com.ssh.entity.Address;
import com.ssh.entity.OrderPet;
import com.ssh.entity.Person;

@Repository
public class CarbuyDaoImpl implements CarbuyDao {

	@Autowired
    private SessionFactory sessionFactory; 
	
	
	private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }


	@Override
	public void saveorders(int order_id,String address, String time, String name, String phone, int remark,
			double totalPrice, int userid) {
		// TODO Auto-generated method stub
		String sql="insert into orders(order_id,address,time,name,phone,remark,totalPrice,userid) values("+order_id+",'"+address+"','"+time+"','"+name+"','"+phone+"',"
				+remark+","+totalPrice+","+userid+")";
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		query.executeUpdate();
	}


	@Override
	public void setorderpet(int amount, String orderdate, int petid,int order_id, double unitprice) {
		// TODO Auto-generated method stub
		String sql="insert into orderpet(amount,order_id,orderdate,petid,unitprice) values("+amount+","+order_id+",'"+orderdate+"',"+petid+","+unitprice+")";
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		query.executeUpdate();
	}


	@Override
	public void setaddre(String consignee, String area, String detailed, String phone1, int acquiescence,int userid) {
		// TODO Auto-generated method stub
		
		String sql="insert into Address(acquiescence,area,consignee,detailed,phone1,userid) values("+acquiescence+",'"+area+"','"+consignee+"','"+detailed+"','"+phone1+"',"+userid+")";
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		query.executeUpdate();
	}


	@Override
	public List<Address> selectuserid(Integer id) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(Address.class);
		 criteria.add(Restrictions.like("userid", id));
		List<Address> list=criteria.list();
		return list;
		
	}


	@Override
	public void deleteadd(int id) {
		// TODO Auto-generated method stub
		String sql="DELETE FROM Address WHERE id ="+id+"";
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		query.executeUpdate();
	}


	@Override
	public List<Address> selectaddid(Integer id) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(Address.class);
		 criteria.add(Restrictions.like("id", id));
		List<Address> list=criteria.list();
		return list;
		
	}


	


	

}
