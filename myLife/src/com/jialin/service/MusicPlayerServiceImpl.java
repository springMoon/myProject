package com.jialin.service;

import java.util.List;

import com.jialin.dao.MusicPlayerDao;


public class MusicPlayerServiceImpl implements MusicPlayerService {
	private MusicPlayerDao musicPlayerDao;
	@Override
	public List<String> searchMusic(String path) {
		return musicPlayerDao.searchMusic(path);
	}
	public MusicPlayerDao getMusicPlayerDao() {
		return musicPlayerDao;
	}
	public void setMusicPlayerDao(MusicPlayerDao musicPlayerDao) {
		this.musicPlayerDao = musicPlayerDao;
	}

}
