package com.techelevator;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Cat;
import com.techelevator.model.CatDao;
import com.techelevator.model.CatNames;



@Controller 
public class HelloController {
	@Autowired
	CatDao catDao;
	

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String displayHomePage(ModelMap toModelCat) {
		List<Cat> cat = catDao.getRandomCatImageFromDb();
		toModelCat.put("randCat", cat);
		
		return "homepage";
		
	}
	
	@RequestMapping(path="/selectionOfCats", method=RequestMethod.GET)
	public String displayselectionOfCats(ModelMap toModelCat) {
		
		return "selectionOfCats";
		
	}
	
	@RequestMapping(path="/resultOfCatSelection", method=RequestMethod.GET)
	public String displayYourSelectedCat(@RequestParam String catType, @RequestParam boolean catSex , String catName, ModelMap modelHolder) {
		
		
		CatNames test = new CatNames(catName);
		test.setCatName(catName);
		
		Cat cat = catDao.getSpecificSelectionFromUserInput(catType, catSex);
		modelHolder.put("catSelection", cat);
		
		//modelHolder.put("catSelection", catDao.getAllCats());
		return "resultOfCatSelection";
	}

	//catcheckoutpage of cat page get and post
	@RequestMapping(path ="/catCheckoutPage", method=RequestMethod.POST)
	public String addToCart(@RequestParam("catId") Long catId , @RequestParam("quantity") Integer quantity, @RequestParam("catUserName")String catUserName ,HttpSession session) {
		
		Cat selectedCat = catDao.getCatById(catId);
		Map<Cat, Integer> shoppingCat = new HashMap<>();
		
		if(session.getAttribute("shoppingCat") != null) {
			shoppingCat = (Map<Cat,Integer>)session.getAttribute("shoppingCat");
		} else {
			shoppingCat = new HashMap<>();
		} //if there is already a key, add another to the quantity
			if(shoppingCat.containsKey(selectedCat)) {
				int cartQuantity = shoppingCat.get(selectedCat);
				cartQuantity = cartQuantity + quantity ;
				shoppingCat.put(selectedCat, cartQuantity);
			}else { //if there are no items, put in the first and add quantity 1
				shoppingCat.put(selectedCat, quantity);
		}
		
		session.setAttribute("shoppingCat", shoppingCat);
		
	//	flashScope.addFlashAttribute("message", "Your " + selectedFruit.getName() + " was added to the cart.");
		
		return "redirect:/catCheckoutPage";
	}
	
	
	@RequestMapping(path="/catCheckoutPage", method=RequestMethod.GET)
	public String displaycatCheckout(Integer quantity, ModelMap toModelCat, HttpSession session) {
		String catName = null;
		CatNames test = new CatNames(catName);
		session.getAttribute("shoppingCat");
		
		toModelCat.put("theNames", test.getCatName());
		return "catCheckoutPage";
		
		
	}
	
	
	// ,,,,,god get
	
	
	
	
	
//	@RequestMapping(path ="/catCheckoutPage", method=RequestMethod.GET)
//	public String displaycatsInYourCart(ModelMap modelHolder, HttpSession session) {
//		//Cat cat2 = catDao.getCatById(catId);
//		//List<Cat> cat = catDao.getAllCats();
//		Map<Cat, Integer> shoppingCat = new HashMap<>();
//		
//		if(session.getAttribute("shoppingCat") != null) {
//			
//			shoppingCat = (Map<Cat, Integer>)session.getAttribute("shoppingCat");
//		} else {
//			shoppingCat = new HashMap<>();
//		}
//		modelHolder.put("total", getTotal(shoppingCat));
//		
//		return "catCheckoutPage";
//	}


	
	
	
	
	

//	private Product getProductById(Long productId) {
//	    for(Product p : productDao.getAllProducts()) {
//	        if (p.getId().equals(productId)) {
//	            return p;
//	        }
//	    }
//	    return null;
//	}
	// ,,,,,,,,,,,

	private BigDecimal getTotal(Map<Cat,Integer> shoppingCat) {
		
		BigDecimal total = BigDecimal.ZERO; 
		for(Cat cat: shoppingCat.keySet()) {
			total = total.add(cat.getPrice().multiply(new BigDecimal (shoppingCat.get(cat))));

		}
		return total;
	}
}



	