package com.touhid.app.web.repository;

import com.touhid.app.entity.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * @author touhid
 * @since 1/28/19
 */
@Repository
public interface PersonRepository extends JpaRepository<Person,Long> {

}
