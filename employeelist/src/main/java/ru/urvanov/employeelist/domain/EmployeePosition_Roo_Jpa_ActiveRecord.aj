// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ru.urvanov.employeelist.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import ru.urvanov.employeelist.domain.EmployeePosition;

privileged aspect EmployeePosition_Roo_Jpa_ActiveRecord{

@PersistenceContext transient EntityManager EmployeePosition.entityManager;

public static final List<String>EmployeePosition.fieldNames4OrderClauseFilter=java.util.Arrays.asList("descr");

public static final EntityManager EmployeePosition.entityManager(){EntityManager em=new EmployeePosition().entityManager;if(em==null)throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");return em;}

public static long EmployeePosition.countEmployeePositions(){return entityManager().createQuery("SELECT COUNT(o) FROM EmployeePosition o",Long.class).getSingleResult();}

public static List<EmployeePosition>EmployeePosition.findAllEmployeePositions(){return entityManager().createQuery("SELECT o FROM EmployeePosition o",EmployeePosition.class).getResultList();}

public static List<EmployeePosition>EmployeePosition.findAllEmployeePositions(String sortFieldName,String sortOrder){String jpaQuery="SELECT o FROM EmployeePosition o";if(fieldNames4OrderClauseFilter.contains(sortFieldName)){jpaQuery=jpaQuery+" ORDER BY "+sortFieldName;if("ASC".equalsIgnoreCase(sortOrder)||"DESC".equalsIgnoreCase(sortOrder)){jpaQuery=jpaQuery+" "+sortOrder;}}return entityManager().createQuery(jpaQuery,EmployeePosition.class).getResultList();}

public static EmployeePosition EmployeePosition.findEmployeePosition(Long id){if(id==null)return null;return entityManager().find(EmployeePosition.class,id);}

public static List<EmployeePosition>EmployeePosition.findEmployeePositionEntries(int firstResult,int maxResults){return entityManager().createQuery("SELECT o FROM EmployeePosition o",EmployeePosition.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();}

public static List<EmployeePosition>EmployeePosition.findEmployeePositionEntries(int firstResult,int maxResults,String sortFieldName,String sortOrder){String jpaQuery="SELECT o FROM EmployeePosition o";if(fieldNames4OrderClauseFilter.contains(sortFieldName)){jpaQuery=jpaQuery+" ORDER BY "+sortFieldName;if("ASC".equalsIgnoreCase(sortOrder)||"DESC".equalsIgnoreCase(sortOrder)){jpaQuery=jpaQuery+" "+sortOrder;}}return entityManager().createQuery(jpaQuery,EmployeePosition.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();}

@Transactional public void EmployeePosition.persist(){if(this.entityManager==null)this.entityManager=entityManager();this.entityManager.persist(this);}

@Transactional public void EmployeePosition.remove(){if(this.entityManager==null)this.entityManager=entityManager();if(this.entityManager.contains(this)){this.entityManager.remove(this);}else{EmployeePosition attached=EmployeePosition.findEmployeePosition(this.id);this.entityManager.remove(attached);}}

@Transactional public void EmployeePosition.flush(){if(this.entityManager==null)this.entityManager=entityManager();this.entityManager.flush();}

@Transactional public void EmployeePosition.clear(){if(this.entityManager==null)this.entityManager=entityManager();this.entityManager.clear();}

@Transactional public EmployeePosition EmployeePosition.merge(){if(this.entityManager==null)this.entityManager=entityManager();EmployeePosition merged=this.entityManager.merge(this);this.entityManager.flush();return merged;}

}
