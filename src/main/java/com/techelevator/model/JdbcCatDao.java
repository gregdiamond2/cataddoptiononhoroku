package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcCatDao implements CatDao{

	//variables
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcCatDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}


	@Override
	public List<Cat> getAllCats() {
		List<Cat> allAnimals = new ArrayList<>();
		String sqlSelectAllAnimals = "SELECT * FROM cat";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllAnimals);
		while(results.next()) {
			allAnimals.add(mapRowToCat(results));
		}
		return allAnimals;
	}


	
	private Cat mapRowToCat(SqlRowSet results) {
		Cat cat = new Cat();
		cat.setId(results.getLong("id"));
		cat.setName(results.getString("animal_name"));
		cat.setAnimalGender(results.getBoolean("animal_gender"));
		cat.setAnimalImage(results.getString("animal_image"));
		return cat;
	}


	@Override
	public Cat getCatById(Long catId) {
		Cat cat = null;
		String sqlSelectProductById = "SELECT * FROM cat WHERE id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectProductById, catId);
		if(results.next()) {
			cat = mapRowToCat(results);
		}
		return cat;
	}
	public List<Cat> getRandomCatImageFromDb() {
		List<Cat> oneAnimals = new ArrayList<>();
		String sqlSelectAllAnimals = " SELECT * FROM cat ORDER BY RANDOM() LIMIT 1";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllAnimals);
		while(results.next()) {
			oneAnimals.add(mapRowToCat(results));
		}
		return oneAnimals;
	}
	@Override
	public Cat getSpecificSelectionFromUserInput(String name, boolean animalGender) {
		Cat cat = null;
		String sqlSelectProductById = "SELECT * FROM cat WHERE animal_name = ? AND animal_gender = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectProductById, name, animalGender);
		if(results.next()) {
			cat = mapRowToCat(results);
		}
		return cat;
	
	}
}





// for example


