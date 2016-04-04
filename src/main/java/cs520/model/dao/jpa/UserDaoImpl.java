package cs520.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cs520.model.User;
import cs520.model.dao.UserDao;

@Repository
public class UserDaoImpl implements UserDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public User getUser( Integer id )
    {
        return entityManager.find( User.class, id );
    }

    @Override
    public User getUserByEmailId( String emailId )
    {
    	 List<User> results= entityManager.createQuery( "from User where UPPER(emailId) like UPPER('"+emailId+"')", User.class ).getResultList();
    	 return results.size() == 0 ? null : results.get( 0 );
    }

    @Override
    public List<User> getUsers()
    {
    	List<User> results= entityManager.createQuery( "from User order by id", User.class ).getResultList();
    	 return results.size() == 0 ? null : results;
    }
  
    @Override
    @Transactional
    public User registerUser(User usr)
    {
        return entityManager.merge(usr);
    }
    
    @Override
    public Boolean checkIfEmailExists(String emailId)
    {
   	 List<User> results= entityManager.createQuery( "from User where UPPER(emailId) like UPPER('"+emailId+"')", User.class ).getResultList();	 
   	 return results.size()==0?Boolean.FALSE:Boolean.TRUE;
    	
    }


}