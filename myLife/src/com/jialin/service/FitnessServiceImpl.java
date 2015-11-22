package com.jialin.service;

import com.jialin.dao.FitnessDao;

public class FitnessServiceImpl implements FitnessService {

	private FitnessDao fitnessDao;
	@Override
	public boolean saveFitness(String fitness) {
		System.out.println("-------saveFitness---------"+fitnessDao);
		//调用FitnessDao 中的SaveFitness， 持久化fitness到数据表中，返回结果
		boolean flag = fitnessDao.saveFitness(fitness);
		System.out.println("fitnessserviceimpl " + flag);
		return flag;
	}
	public FitnessDao getFitnessDao() {
		return fitnessDao;
	}
	public void setFitnessDao(FitnessDao fitnessDao) {
		this.fitnessDao = fitnessDao;
	}
	@Override
	public String getFitness(int id) {
		
		return fitnessDao.getFitness(id);
	}

}
