package it.mongo.dao;

import java.util.List;

import it.mongo.Person;

public interface PersonMongoDao {
	List<Person> findAll();

	void insertPerson(Person user);

	void removePerson(String userName);

	void updatePerson();

	List<Person> findForRequery(String userName);
}
