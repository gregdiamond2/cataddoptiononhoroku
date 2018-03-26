package com.techelevator.model;

import java.math.BigDecimal;

public class Cat {
	private Long id;
	private String name;
	private boolean animalGender;
	private String animalImage;
	private BigDecimal price;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isAnimalGender() {
		return animalGender;
	}
	public void setAnimalGender(boolean animalGender) {
		this.animalGender = animalGender;
	}
	public String getAnimalImage() {
		return animalImage;
	}
	public void setAnimalImage(String animalImage) {
		this.animalImage = animalImage;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
}
