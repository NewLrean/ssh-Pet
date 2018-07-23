package com.ssh.controller;

import java.util.List;
 
import javax.servlet.http.HttpSession;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssh.dao.CarbuyDao;
import com.ssh.entity.Address;
import com.ssh.entity.Orders;
import com.ssh.entity.Person;
import com.ssh.entity.Pets;
import com.ssh.service.CarbuyService;
import com.ssh.service.OrderService;
import com.ssh.service.PersonService;
import com.ssh.service.TestService;

@Controller
public class MainController {
	
	
	@Autowired
    private TestService testService;
	 
	 @Autowired
	 private PersonService personService;
	 
	 @Autowired
	 HttpSession session;
	 
	 @Autowired
	 private CarbuyService  carbuyService;
	 
	 @Autowired
	 
	 private OrderService orderService;
	@RequestMapping(value = "test", method = RequestMethod.GET)
    public String test(){
        return "test";
    }
	
	
	
	@RequestMapping(value = "springtest", method = RequestMethod.GET)
    public String springTest(){
        return testService.test();
    }
	   
	

	    @RequestMapping(value = "savePerson", method = RequestMethod.GET)
	    @ResponseBody
	    public String savePerson(){
	        personService.savePerson();
	        return "success!";
	    }
	   
	    @RequestMapping(value ="allper",method = RequestMethod.GET)
	    
	    public String allper(Model model){
	    	List<Person> list=personService.allperson();
	    	
	    	model.addAttribute("user", list);
	    	
			return "index";
			
	    }

        @ResponseBody
	    @RequestMapping(value ="/loginper",method = RequestMethod.POST)
	    public String loginper(@RequestParam("username")String username,@RequestParam("password")String password, HttpSession session){
	    	System.out.println(username);
	    	
	    	List<Person> list=personService.loginper(username,password);
	    	
	    	if(list.size()==1){
	    		System.out.println(username+" "+password);
	    		session.setAttribute("username", list.get(0));
	    		session.setAttribute("name",username);
	    		
	    		System.out.println("123="+session.getAttribute("username"));
	    		System.out.println("�ɹ�");
	    		List<Address> addList=carbuyService.selectuserid(list.get(0).getId());
	   		 	session.setAttribute("addlist", addList);
	   		 	
	   		 	
	   		 	List<Orders> orderList=orderService.selectorderid(list.get(0).getId());
	   		 	session.setAttribute("orderlist", orderList);
	   		 	
			return "true";
	    	}
	    	
	    	
			return "false";
	    }
	    
 
        @ResponseBody
        @RequestMapping(value ="/savePer",method = RequestMethod.POST)
        public String savePer(Person person){
        	System.out.println(person.getUsername());
        	List<Person> list=personService.checkname(person.getUsername());
        	if(list.size()>=1){
        		return"false";
        	}
        	else{
        		personService.setSave(person);
            	
    			return "true";
        	}
        	
        }
        
        @ResponseBody
        @RequestMapping(value ="/updatePer",method = RequestMethod.POST)
        public String update(@RequestParam("realname")String realname,@RequestParam("birth")String birth,
        		@RequestParam("sex")int sex){
        	System.out.println("更新.......");
        	String name=(String) session.getAttribute("name");
        	personService.updateP(realname, birth, sex,name);
        	List<Person> list=personService.checkname(name);
        	session.setAttribute("username", list.get(0));
			return "true";
        	
        }
        @RequestMapping(value ="search",method = RequestMethod.POST)
        public String  search(@RequestParam("title")String title){
        	
        	
        	if(title!="")
        	{
        		session.removeAttribute("petlist");
        		session.removeAttribute("seatitle");
        		session.removeAttribute("number");
        		List<Pets> list=personService.selecttitle(title);
        		session.setAttribute("petlist", list);
        		session.setAttribute("seatitle", title);
        		session.setAttribute("number", list.size());
        		System.out.println(session.getAttribute("petlist"));

        	return "search";
        	}
        	else{
        		return "index";
        	}
        
        }
        
        @RequestMapping(value ="search2",method = RequestMethod.POST)
        public String  search2(@RequestParam("title2")String title2){
        	
        	
        	
        		session.removeAttribute("petlist");
        		session.removeAttribute("seatitle");
        		session.removeAttribute("number");
        		List<Pets> list=personService.selecttitle(title2);
        		session.setAttribute("petlist", list);
        		session.setAttribute("seatitle", title2);
        		session.setAttribute("number", list.size());
        		System.out.println(session.getAttribute("petlist"));

        	return "search";
        	
        	
        
        }
        
        @RequestMapping(value ="user/login",method = RequestMethod.GET)
        public String  login(){
        	return "home";
        }
		
        
        
        @ResponseBody
        @RequestMapping(value ="/checkname",method = RequestMethod.POST)
        public String checkname(@RequestParam("username")String username){
        	System.out.println(username);
        	List<Person> list=personService.checkname(username);
        	if(list.size()>=1){
	    		
	    		System.out.println("����");
			return "false";
        	
        }
        	else{
        		System.out.println("������");
        		return "success";
        	}
			
        }
        
        @RequestMapping(value="loginout",method = RequestMethod.GET)
        	public String  loginout(){
        	// ����session  
        		session.invalidate();
				return "login";
        		
        	}
        
        @RequestMapping(value="loginout2",method = RequestMethod.GET)
    	public String  loginout2(){
    	// ����session  
    		session.invalidate();
			return "outlogin";
    	}
    
        
}
