package com.MainController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; // ✅ Corrected import
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.Class.Product;
import com.DaoClass.ProductDao;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String show(Model m) {
		
	List<Product> products = productDao.getProducts();
	
	m.addAttribute("products",products);

	
		return "index";
	}

	// show add product form
	@RequestMapping("/add_product")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "add_product"; // Returning the view name (add_product.jsp)
	}

	// handle add product here
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleproduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
//	delete handler
	@RequestMapping("/delete/{productId}")
	
	public RedirectView deleteproduct(@PathVariable("productId") int productId,HttpServletRequest request)
	{
		
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
//	update handler
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model model) {
	    Product product = this.productDao.getproduct(pid);
	    model.addAttribute("product", product);
	    return "update_form";
	}
}
