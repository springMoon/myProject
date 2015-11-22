package com.jialin.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;

import com.jialin.entity.Fitness;
import com.jialin.service.FitnessService;
import com.opensymphony.xwork2.ActionSupport;

public class FitnessAction extends ActionSupport{
	private String fitness = null;
	private FitnessService fitnessService;
	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		
		System.out.println(request.getCharacterEncoding());
		
		return saveFitness();
		
	}
/*	@Test
	private String loadFitness (){
		
		int id = 1;
		fitness = fitnessService.getFitness(id);
		System.out.println("fitness = "+ fitness);
		if(null != fitness){
			return "success";
		}
		return "faild";
	}*/

	private String saveFitness() {
		System.out.println(fitness + "----------" +fitnessService);
		//调用Service，持久化fitness
		boolean flag = fitnessService.saveFitness(fitness);
		if(flag){
			return "success";
		}
		System.out.println("fitnessAction " + flag);
		return "faild";
	}
	public String loadFitness(){
		//访问fitness/TimeManage.html先从后台拿数据
		System.out.println("load fitness");
		//paramater is not need
//		setFitness(fitnessService.getFitness(0));
		fitness = fitnessService.getFitness(0);
		if("".equals(fitness)){
			return "faild";
		}else{
			System.out.println(fitness);
			return "success";
		}
	}
	

	public String getFitness() {
		return fitness;
	}


	public void setFitness(String fitness) {
		this.fitness = fitness;
	}


	public FitnessService getFitnessService() {
		return fitnessService;
	}
	public void setFitnessService(FitnessService fitnessService) {
		this.fitnessService = fitnessService;
	}
	
	
}
