package it.mongo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import it.mongo.Person;
import it.mongo.dao.PersonMongoDao;

@Repository("personMongoImpl")
public class PersonMongoDaoImpl implements PersonMongoDao {

	@Resource
	private MongoTemplate mongoTemplate;

	public List<Person> findAll() {
		return mongoTemplate.findAll(Person.class, "person");
	}

	public void insertPerson(Person person) {
		mongoTemplate.insert(person, "person");
	}

	public void removePerson(String userName) {
		mongoTemplate.remove(Query.query(Criteria.where("name").is(userName)), "person");
	}

	public void updatePerson() {
		mongoTemplate.updateMulti(Query.query(Criteria.where("age").gt(3).lte(5)), Update.update("age", 3), "person");
	}

	public List<Person> findForRequery(String userName) {
		return mongoTemplate.find(Query.query(Criteria.where("name").is(userName)), Person.class);
	}

}
