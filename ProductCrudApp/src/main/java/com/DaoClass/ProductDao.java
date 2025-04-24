package com.DaoClass;

import java.util.List; // ✅ Correct import

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.Class.Product;

@Component
public class ProductDao {

    @Autowired
    private HibernateTemplate ht;
//Create
    @Transactional
    public void createProduct(Product product) {
        this.ht.saveOrUpdate(product);
    }

    
//    Get all Products
    public List<Product> getProducts() {
        List<Product> products = this.ht.loadAll(Product.class); // ✅ Now it returns the list
        return products;
    }
    
//    Delete single products
    @Transactional
    public void deleteProduct(int pid )
    {
    	Product p = this.ht.load(Product.class, pid);
    	this.ht.delete(p);
    }
    
//    get the single product
    
    public Product getproduct(int pid )
    {
    	return this.ht.get(Product.class, pid);
    }
     
}
