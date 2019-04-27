package com.padrao.spring.model;

import java.util.ArrayList;
import java.util.List;

import com.padrao.spring.entity.Product;

public class ProductModel {
	private List<Product> produtos;

	public ProductModel() {
		this.produtos = new ArrayList<>();
		this.produtos.add(new Product("p01", "name 1", "images1.jpg", 20 ));
		this.produtos.add(new Product("p02", "name 2", "images2.jpg", 30 ));
		this.produtos.add(new Product("p03", "name 3", "images3.jpg", 40 ));
		this.produtos.add(new Product("p04", "name 4", "unnamed1.gif", 50 ));
		this.produtos.add(new Product("p05", "name 5", "unnamed2.gif", 60 ));
		this.produtos.add(new Product("p06", "name 6", "unnamed3.gif", 70 ));
	}
	
	public List<Product> findAll(){
		return this.produtos;
	}
	
	public Product find(String id) {
		for (Product produto : this.produtos) {
			if(produto.getId().equalsIgnoreCase(id)) {
				return produto;
			}
		}
		return null;
	}
	
}
