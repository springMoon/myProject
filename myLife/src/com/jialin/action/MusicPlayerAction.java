package com.jialin.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.jialin.service.MusicPlayerService;
import com.opensymphony.xwork2.ActionSupport;

public class MusicPlayerAction extends ActionSupport{
	
	private MusicPlayerService musicPlayerService = null;
	private List<String> list = new ArrayList<String>();
	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		
		System.out.println(request.getCharacterEncoding());
		
		this.setList(musicPlayerService.searchMusic("E:\\music"));
		
		System.out.println(this.getList());
		
		
		return "success";
		
	}
	public MusicPlayerService getMusicPlayerService() {
		return musicPlayerService;
	}
	public void setMusicPlayerService(MusicPlayerService musicPlayerService) {
		this.musicPlayerService = musicPlayerService;
	}
	public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list =  list;
	}
	
}
