package com.jialin.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;


public class MusicPlayerDaoImpl implements MusicPlayerDao {

	@Override
	public List<String> searchMusic(String path) {
		System.out.println("-----come in MusicPlayerDaoImple.searchMusic-----");
		// create the path
		File filePath = new File(path);
		// String[]
		List<String> list = new ArrayList<String>();
		if (filePath.exists()) {
			// file = filePath.list();
			// reterited the file, find all the music file
			reteritedPath(filePath,list);
//			System.out.println("--" + list);
		}
		/*for(String file:list){
			System.out.println(file.toString());
		}*/
		return list;
	}

	/*
	 * get file name
	 * 
	 */
	
	private void reteritedPath(File path,List<String> list){
		
		File files[] = path.listFiles();
		//files not null
		if(files != null){
			for(File file:files){
				if(file.isDirectory()){
					reteritedPath(file,list);
				}else{
					//filter the file name to end with mp3
					if(file.toString().endsWith(".mp3")){
						list.add(file.toString());
					}
				}
			}
		}
	}
	//faild
	/*private String reteritedPath(File path) {

		// judge path is a directory
		File files[] = path.listFiles();
//		String str[] = file.list();
		if (file.isDirectory()) {
		for (int i = 0; i < str.length; i++) {
				// System.out.println(str[i]);
				path += reteritedPath(path + "\\" + str[i]);
			}
		}
		// System.out.println(path);
		return path;
	}*/
	// is faild
	/*
	 * private List reteritedPath(File filePath,List<String> file){ //judge
	 * filePath if(filePath.isDirectory()){ String []strs = filePath.list();
	 * System.out.println(filePath +"/"+file[51]); //path is correct,but will
	 * throw exception AudioPlayer ap = new AudioPlayer(filePath +"/"+file[51]);
	 * ap.play(); for(int i= 0; i< strs.length; i++){ // File tempFile = new
	 * File(filePath +"/"+ file[i]); // if(tempFile.isDirectory())
	 * reteritedPath(new File(strs[i]),file); } }else{
	 * file.add(filePath.getName()); }
	 * 
	 * return file; }
	 */
}
