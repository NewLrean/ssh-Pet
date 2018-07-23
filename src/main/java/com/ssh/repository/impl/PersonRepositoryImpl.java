package com.ssh.repository.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssh.entity.Person;
import com.ssh.repository.PersonRepository;

@Repository
public class PersonRepositoryImpl implements PersonRepository{

	@Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public Person load(Integer id) {
        return (Person)getCurrentSession().load(Person.class,id);
    }

    public Person get(Integer id) {
        return (Person)getCurrentSession().get(Person.class,id);
    }

    public List<Person> findAll() {
        return null;
    }

    public void persist(Person entity) {
        getCurrentSession().persist(entity);
    }

    public void save(Person entity) {
        this.getCurrentSession().save(entity);
    }

    public void saveOrUpdate(Person entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        Person person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }

	

}
