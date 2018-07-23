package com.ssh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.PersonDao;
import com.ssh.entity.Person;
import com.ssh.entity.Pets;
import com.ssh.repository.PersonRepository;
import com.ssh.service.PersonService;

@Service
public class PersonServiceImpl implements PersonService{
	@Autowired
    private PersonRepository personRepository;

	@Autowired	
	PersonDao persondao;
	
    public void savePerson() {
        Person person = new Person();
        person.setUsername("admin");
        person.setPassword("123456");
        person.setPhone("18381005946");
        person.setAddress("chenDu");
        this.personRepository.save(person);
    }

	public boolean addperson(Person person) {
		// TODO Auto-generated method stub
		return persondao.addperson(person);
	}

	public boolean deleteperson(Person person) {
		// TODO Auto-generated method stub
		return persondao.deleteperson(person);
	}

	public boolean updateperson(Person person) {
		// TODO Auto-generated method stub
		return persondao.updateperson(person);
	}

	public List<Person> allperson() {
		// TODO Auto-generated method stub
		return persondao.allperson();
	}

	public List<Pets> selecttitle(String title) {
		// TODO Auto-generated method stub
		return persondao.selecttitle(title);
	}

	public List<Person> loginper(String name,String pass) {
		// TODO Auto-generated method stub
		return persondao.loginper(name,pass);
	}

	public void setSave(Person person) {
		// TODO Auto-generated method stub
		this.persondao.setSave(person);
	}

	public List<Person> checkname(String name) {
		// TODO Auto-generated method stub
		return persondao.checkname(name);
	}

	@Override
	public List<Pets> selectid(Integer id) {
		// TODO Auto-generated method stub
		return persondao.selectid(id);
	}

	@Override
	public void updateP(String realname, String birth, int sex,String name) {
		// TODO Auto-generated method stub
		this.persondao.updateP(realname, birth, sex,name);
	}



	
}
