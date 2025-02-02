package com.example.accessingdatamysql.service;

import java.util.List;
import java.util.Optional;
 
import jakarta.persistence.EntityNotFoundException;
 
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
 
import com.example.accessingdatamysql.model.User;
import com.example.accessingdatamysql.dao.UserRepository;
 
@Service
public class PersonService {
 
    @Autowired
    UserRepository userRepo;
    
    
    // --------------------------------These methods are used by the MVC Controller----------------------------
    // This method is getting all of the Persons
    public List<User> getAll() {
        return (List<User>) userRepo.findAll();
    }
 
    // This method get a Person by Id
    public User getPersonById(long id) {

        User person = null;
        Optional<User> searchEntity = userRepo.findById(id);
        if (searchEntity.isPresent()) 
            person = searchEntity.get();
         else 
             throw new EntityNotFoundException();
         return person;
       }
       
       // This method is used by Update + Create
       public void saveOrUpdate(User user) {
          userRepo.save(user);
       }
    
       // This method is used to delete a person by Id
       public void deletePerson(long id) {
          userRepo.deleteById(id);
       }
    
  
}