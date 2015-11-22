package com.jialin.dao;

import org.junit.Test;

public class MusicPlayerTest {
	
	/*
	 * test searchMusic is worked
	 */
	@Test
	public void testSearchMusic(){
		
		String path = "E:\\Music";
		MusicPlayerDao mp = new MusicPlayerDaoImpl();
		mp.searchMusic(path);
	}
}
