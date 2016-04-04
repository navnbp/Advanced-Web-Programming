package cs520.model.dao.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import cs520.model.Role;
import cs520.model.dao.RoleDao;

@Repository
public class RoleDaoImpl implements RoleDao {
	
	@PersistenceContext
    private EntityManager entityManager;
	
	@Override
	public Role getRoleByName(String roleName)
	{
		  return entityManager.createQuery( "from Role where roleName = :roleName", Role.class )
				  .setParameter("roleName",roleName).getSingleResult();
	}

}
