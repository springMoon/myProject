package com.jialin.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.jialin.entity.Fitness;

public class FitnessDaoImpl implements FitnessDao {
	private SessionFactory sessionFactory;
	
	/*public boolean saveFitness(String fitness){
		this.getHibernateTemplate().save(fitness);
		return false;
	}*/
//	@Override
	public boolean saveFitness(String fitness) {
		System.out.println("----FitnessDaoImpl.saveFitness----");
		System.out.println(fitness.length());
		Session session = null;
		Fitness fit = new Fitness();
		try{
			session = getSession();
			fit.setFitness(fitness);
			session.save(fit);
		}catch(Exception e){
			return false;
		}
		return true;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Override
	public String getFitness(int id) {
		//Don't need id, just load the last record, which is the new record
		//get last record in table t_fitness
		Fitness fitness = null;
		try{
			String hql = "from Fitness order by id desc";
			fitness = (Fitness) getSession().createQuery(hql)
						.setFirstResult(1).setMaxResults(1).list().get(0);
	//		Fitness fitness = (Fitness) getSession().get(Fitness.class, id);
		}catch(Exception e){
			return "";
		}
		return fitness.getFitness();
	}
	
}
