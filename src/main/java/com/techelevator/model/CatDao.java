package com.techelevator.model;

import java.util.List;


public interface CatDao {

	public List<Cat> getAllCats();
	
	public Cat getCatById(Long productId);
	
	public List<Cat> getRandomCatImageFromDb();

	public Cat getSpecificSelectionFromUserInput(String name, boolean animalGender);
}
