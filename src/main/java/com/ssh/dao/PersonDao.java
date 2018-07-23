package com.ssh.dao;

import java.util.List;

import com.ssh.entity.Person;
import com.ssh.entity.Pets;

public interface PersonDao {
	boolean addperson(Person person);

    boolean deleteperson(Person person);

    boolean updateperson(Person person);
    
    List<Person> allperson();
    
    List<Pets> selecttitle(String title);
    
    List<Pets> selectid(Integer id);
    
    List<Person> loginper(String name,String pass);
    
    void setSave(Person person);
    
    List<Person> checkname(String name);
    
    void updateP(String realname,String birth,int sex,String name);
}
