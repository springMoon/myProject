package com.jialin.dao;

import java.util.List;

public interface MusicPlayerDao {
	//search music file in some path
	public List<String> searchMusic(String path);
}
