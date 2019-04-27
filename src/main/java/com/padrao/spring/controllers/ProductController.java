package com.padrao.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.padrao.spring.model.ProductModel;

@Controller
@RequestMapping(value = "produto")
public class ProductController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index( ModelMap modelMap ) {
		ProductModel productModel = new ProductModel();
		modelMap.put("produtos", productModel.findAll());
		return "product/index";
	}
	
	
}
