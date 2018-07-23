package com.ssh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssh.SetUtils.GetTime;
import com.ssh.entity.Address;
import com.ssh.entity.OrderPet;
import com.ssh.entity.Orders;
import com.ssh.entity.Person;
import com.ssh.entity.Pets;
import com.ssh.service.CarbuyService;
import com.ssh.service.OrderService;
import com.ssh.service.PersonService;
import com.ssh.service.TestService;


@Controller
public class MaincarController {
	@Autowired
    private TestService testService;
	 
	 @Autowired
	    private PersonService personService;
	 
	 @Autowired
	 HttpSession session;
	 
	 @Autowired
	 	private CarbuyService carbuyService;
	 
	@Autowired
		private OrderService orderService;
	
	
	
	 
	 @RequestMapping(value="details",method = RequestMethod.GET)
	 public String details(@RequestParam("id")Integer id){
		 System.out.println(id);
		 List<Pets> list=personService.selectid(id);
		 System.out.println(list.get(0).getId());
		 session.removeAttribute("details");
		 session.setAttribute("details", list.get(0));
		return "details";
		 
	 }
	 
	 @RequestMapping(value="user/buy",method = RequestMethod.GET)
	 public String buy(){
		return "buy";
		 
	 }
	 
	 @RequestMapping(value="user/buydirect",method = RequestMethod.GET)
	 public String buydirect(){
		 
		return "buydirect";
		 
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="ruCar",method = RequestMethod.GET)
	 public String ruCar(@RequestParam("id")int id,@RequestParam("nump")int nump){
		 System.out.println(id+"  "+nump);
		 
		 
		Map<Integer, Integer> map=(HashMap<Integer, Integer>) session.getAttribute("map");
		 	if(map==null){
		 		map=new HashMap<>();
		 	}
		 	
		 	if(map.get(id)==null){
		 		map.put(id,	nump);
		 	}
		 	else{
		 		int oldQuantity = map.get(id);
		 		map.put(id, nump+oldQuantity);
		 		System.out.println(oldQuantity);
		 	}
		 	Map<Pets, Integer> kk = new HashMap<Pets, Integer>();
		 	Set<Integer> keySet = map.keySet();
		 	for(Integer kid : keySet) {
		 		List<Pets> list=personService.selectid(kid);
		 		
		 		System.out.println("id："+kid + "  数量：" + map.get(kid));
		 		System.out.println(list.get(0).getPetinfor()+"  "+map.get(kid));
		 		kk.put(list.get(0), map.get(kid));
		 	}
		 	
		 	
		 	session.setAttribute("map", map);
		 	
		 	session.setAttribute("cars", kk);
		 	
		 	
		 	return "true";
		 	
		 	
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="fisorder",method =RequestMethod.GET)
	 public String fisorder(@RequestParam("id")int id,@RequestParam("nump")int nump,@RequestParam("addressid")int addressid){
		 String name=(String) session.getAttribute("name");
		 System.out.println(name);
		 List<Person> personsel=personService.checkname(name);
		 int userid=personsel.get(0).getId();
		 System.out.println(userid);
		 List<Address> addList=carbuyService.selectuserid(userid);
		 int order_id=orderService.seOrders();
		
		 
		 if(addList.size()==0){
			 System.out.println("您还没设定地址！");
			 return "false";
		 }
		 else{
		 List<Address> addidList=carbuyService.selectaddid(addressid);
		 List<Pets> list=personService.selectid(id);
		 
		 
		 int amount=nump;
		 int petid=id;
		 double unitprice=list.get(0).getPetprice();
		 String orderdate=new GetTime().setdate();
		 String address=addidList.get(0).getArea()+addidList.get(0).getDetailed();
		 String phone=addidList.get(0).getPhone1();
		 int remark=addidList.get(0).getAcquiescence();
		 double alltotal=nump*list.get(0).getPetprice();
		 System.out.println(alltotal);
		 System.out.println("地址id="+addressid);
		 carbuyService.saveorders(order_id, address, orderdate, addidList.get(0).getConsignee(), phone, remark, alltotal, userid);
		 carbuyService.setorderpet(amount, orderdate, petid, order_id, unitprice);
		 order_id++;
		 
		 List<Orders> orderList=orderService.selectorderid(userid);
		 	session.setAttribute("orderlist", orderList);
		 	
		return "true";
		 }
		 
	 }
	 @RequestMapping(value="clearCar",method =RequestMethod.GET)
	 public String clearCar(){
		 Map<Integer, Integer> map=(Map<Integer, Integer>) session.getAttribute("map");
		 map.clear();
		return "cart";
		 
	 }
	 
	 @RequestMapping(value="clearpet",method= RequestMethod.GET)
	 public String clearpet(@RequestParam("id")int id){
		 
		 Map<Integer, Integer> map=(Map<Integer, Integer>) session.getAttribute("map");
		 System.out.println(map.get(id));
		 map.remove(id);
		 Map<Pets, Integer> kk = new HashMap<Pets, Integer>();
		 	Set<Integer> keySet = map.keySet();
		 	for(Integer kid : keySet) {
		 		List<Pets> list=personService.selectid(kid);
		 		System.out.println("id："+kid + "  数量：" + map.get(kid));
		 		System.out.println(list.get(0).getPetinfor()+"  "+map.get(kid));
		 		
		 		kk.put(list.get(0), map.get(kid));
		 	}
		 	
		 	
		 	session.setAttribute("map", map);
		 	
		 	session.setAttribute("cars", kk);
		 	
		return "cart";
		 
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="/address",method= RequestMethod.POST)
	 public String setaddress(@RequestParam("consignee")String consignee,@RequestParam("area")String area,
			 @RequestParam("detailed")String detailed,@RequestParam("phone1")String phone1,@RequestParam("acquiescence")int acquiescence){
		 String name=(String) session.getAttribute("name");
		 List<Person> personsel=personService.checkname(name);
		 int userid=personsel.get(0).getId();
		 System.out.println(userid);
		 
		 if(userid!=0){
			 String arear=area.toString();
		 carbuyService.setaddre(consignee, arear, detailed, phone1, acquiescence, userid);
		 
		 System.out.println(acquiescence);
		 List<Address> addList=carbuyService.selectuserid(userid);
		 session.setAttribute("addlist", addList);
		 
		return "true";
		 }
		 else{
			 return "false";
		 }
		 
		 
	 }
	 
	 @RequestMapping(value="deleteadd",method= RequestMethod.GET)
	 public String deleteadd(@RequestParam("id")int id){
		 carbuyService.deleteadd(id);
		 
		 String name=(String) session.getAttribute("name");
		 System.out.println(name);
		 List<Person> personsel=personService.checkname(name);
		 List<Address> addList=carbuyService.selectuserid(personsel.get(0).getId());
		 session.setAttribute("addlist", addList);
		return "address";
		 
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="mapbuy",method = RequestMethod.GET)
	 public String mapbuy(@RequestParam("addressid")int addressid){
		 
		 String user=(String) session.getAttribute("name");
		 
		 if(user!=null){
		 Map<Integer, Integer> map=(Map<Integer, Integer>) session.getAttribute("map");
		 
		 int order_id=orderService.seOrders();
		 
		 double alltotal=0;
		 String orderdate=new GetTime().setdate();
		 	Set<Integer> keySet = map.keySet();
		 	for(Integer kid : keySet) {
		 		List<Pets> list=personService.selectid(kid);
		 		System.out.println("id："+kid +"  "+list.get(0).getPetinfor() +"  数量：" + map.get(kid));
		 		double total=list.get(0).getPetprice()*map.get(kid);
		 		System.out.println("总价="+total);
		 		
		 		carbuyService.setorderpet(map.get(kid), orderdate, kid, order_id, list.get(0).getPetprice());
		 		
		 		alltotal+=total;
		 		System.out.println(alltotal);
		 	}
		 	 List<Address> addidList=carbuyService.selectaddid(addressid);
		 	String address=addidList.get(0).getArea()+addidList.get(0).getDetailed();
			 String phone=addidList.get(0).getPhone1();
			 int remark=addidList.get(0).getAcquiescence();
			 String name=addidList.get(0).getConsignee();
			 
			 
			 List<Person> personsel=personService.checkname(user);
			 int userid=personsel.get(0).getId();
			 carbuyService.saveorders(order_id, address, orderdate, name, phone, remark, alltotal, userid);
			 
			 map.clear();
			 
			 List<Orders> orderList=orderService.selectorderid(userid);
			 	session.setAttribute("orderlist", orderList);
			 	
			 order_id++;
		return "true";
		 }
		 else{
			 return "false";
		 }
	 }
	 
	 @RequestMapping(value="orderpetinf",method = RequestMethod.GET)
	 public String orderpetinf(@RequestParam("orderid")int orderid){
		 System.out.println(orderid);
		 
		 List<OrderPet> opetList=orderService.selectorderpetid(orderid);
		 session.setAttribute("opetList", opetList);
		 return "orderpet";
	 }
	 
	
	 
}
