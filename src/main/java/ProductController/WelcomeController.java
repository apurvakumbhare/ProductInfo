package ProductController;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ProductBeans.Product;
import ProductServices.serviceimpl;


@Controller

public class WelcomeController {
@RequestMapping(value = "/" )
public ModelAndView welcome() {
	System.out.println("inside welcomePage ");
	HashMap<String, Object> map=new HashMap<>();
	map.put("message","We Welcome U");
	return new ModelAndView("index",map);

}

@RequestMapping(value = "/save")
public ModelAndView addProduct() {

	System.out.println("inside welcomePage ");
	HashMap<String, Object> map=new HashMap<>();
	map.put("userdata",new Product());
	return new ModelAndView("addProduct",map);

}
@RequestMapping(value = "/about")
public ModelAndView showAbout() {
return new ModelAndView("aboutUs");

}
@Autowired
serviceimpl service;
@RequestMapping(value = "/success",method=RequestMethod.POST)
public ModelAndView saveProduct(@ModelAttribute("userdata")Product product) {
	
	System.out.println("inside saveProduct ");
	HashMap<String, Object> map=new HashMap<>();
	String message;
	if(product.getId()<1) {
		message="Invalid Id";
	}else {
		message=service.addProduct(product);
		
	}
	
	map.put("message",message);
	return new ModelAndView("addProduct",map);

}
@RequestMapping(value = "/showList",method=RequestMethod.GET)
public ModelAndView saveProduct() {
	HashMap<String, List<Product> > map=new HashMap<>();
	 List<Product> productList=service.getProductList();
	map.put("productList",productList);
	return new ModelAndView("showList",map);

}
@RequestMapping(value = "/showList/search",method=RequestMethod.POST)
public ModelAndView search(@RequestParam("ID")int id) {
	HashMap<String,Object > map=new HashMap<>();
	Object p=service.getProductById(id);
    if (p instanceof Product) {
        map.put("product", p);
    } else {
        map.put("message", p); 
    }
	return new ModelAndView("showList",map);

}
@RequestMapping(value = "/showList/shelf",method=RequestMethod.GET)
public ModelAndView shelf() {
	
	return new ModelAndView("shelf");

}
@RequestMapping(value = "/showList/shelf",method=RequestMethod.POST)
public ModelAndView shelfsearch(@RequestParam("shelf")int shelf) {
	HashMap<String,Object > map=new HashMap<>();
	List<Product> p=service.getProductByShelf(shelf);
    if (p!=null && !p.isEmpty()) {
        map.put("productList", p);
    } else {
        map.put("message", "Shelf Doesn't Exist"); 
    }
	return new ModelAndView("shelf",map);

}
}
