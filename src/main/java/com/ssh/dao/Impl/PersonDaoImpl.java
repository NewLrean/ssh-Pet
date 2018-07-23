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

import com.ssh.dao.PersonDao;
import com.ssh.entity.Person;
import com.ssh.entity.Pets;

@Repository
public class PersonDaoImpl implements PersonDao{

	@Autowired
    private SessionFactory sessionFactory; 
	
	
	private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }
	
	//����û�
	public boolean addperson(Person person) {
		// TODO Auto-generated method stub
		boolean flag;
        try {
            this.getCurrentSession().save(person);
            flag = true;
        } catch (Exception e) {
            return false;
        }
        return flag;
	}

	//ɾ���û�
	public boolean deleteperson(Person person) {
		// TODO Auto-generated method stub
		boolean flag;
        try {
            this.getCurrentSession().delete(person);
            flag = true;
        } catch (Exception e) {
            return false;
        }
        return flag;
	}

	//�����û�
	public boolean updateperson(Person person) {
		// TODO Auto-generated method stub
		boolean flag;
        try {
            this.getCurrentSession().update(person);
            flag = true;
        } catch (Exception e) {
            return false;
        }
        return flag;
	}

	//���пͻ�
	@SuppressWarnings("unchecked")
	public List<Person> allperson() {
		// TODO Auto-generated method stub
		Query query = this.getCurrentSession().createQuery("from Person");
        return query.list();
	}

	
	//ģ����ѯ
	public List<Pets> selecttitle(String title) {
		// TODO Auto-generated method stub
		Criteria criteria = this.getCurrentSession().createCriteria(Pets.class);
        criteria.add(Restrictions.like("petinfor", "%" + title + "%"));
        return criteria.list();
    }
	
	@Override
	public List<Pets> selectid(Integer id) {
		// TODO Auto-generated method stub
		Criteria criteria = this.getCurrentSession().createCriteria(Pets.class);
        criteria.add(Restrictions.like("id", id));
        return criteria.list();
	}
	
	

	public List<Person> loginper(String name, String pass) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(Person.class);
		Criterion criterion=Restrictions.or(Restrictions.and(Restrictions.eq("username", name),Restrictions.eq("password", pass)));
		criteria.add(criterion);
		List<Person> list=criteria.list();
	 
		return list;
	}


	public void setSave(Person person) {
		// TODO Auto-generated method stub
		boolean flag;
        try {
            this.getCurrentSession().save(person);
            flag = true;
        } catch (Exception e) {
            return;
        }
        return;
	}

	public List<Person> checkname(String name) {
		// TODO Auto-generated method stub
		Criteria criteria=this.getCurrentSession().createCriteria(Person.class);
		Criterion criterion=Restrictions.or(Restrictions.eq("username", name));
		criteria.add(criterion);
		List<Person> list=criteria.list();
		return list;
	}

	@Override
	public void updateP(String realname, String birth, int sex,String name) {
		// TODO Auto-generated method stub
		String sql="UPDATE Person SET realname =?, birth = ?,sex = ? WHERE username = ?";
		
		SQLQuery query=this.getCurrentSession().createSQLQuery(sql);
		query.setString(0, realname);
		query.setString(1,birth);
		query.setInteger(2, sex);
		query.setString(3, name);
		query.executeUpdate();
	}
}
	
