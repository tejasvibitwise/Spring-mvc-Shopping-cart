package com.bitwise.cart;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	
	
@Autowired

ProductList productList;

//	@RequestMapping(value="/success",method = RequestMethod.GET)
//	public String selectedProductsubmit(Model model, @ModelAttribute("ProductDetails") ProductDetails productDetails) {
//		//productDetails.addProducts();
//		List<ProductDetails> itemlist=productDetails.getProducts();
//		
//		model.addAttribute("list",itemlist);
//				System.out.println("list");
//				
//		 return "success";
//		}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public ModelAndView save() {
		System.out.println(productList);
		return new ModelAndView("success", "productList", productList);
		
		}
	
	
	

}
