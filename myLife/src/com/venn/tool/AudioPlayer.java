package com.venn.tool;

import java.applet.Applet;
import java.applet.AudioClip;

/**
 * 音频播放器，播放开始的声音
 *
 * API 复制： AudioClip 接口是用于播放音频剪辑的简单抽象
 *
 * void loop() 以循环方式开始播放此音频剪辑。 
 * void play() 开始播放此音频剪辑。 
 * void stop() 停止播放此音频剪辑。
 */
public class AudioPlayer {

	AudioClip audioClip;

	public AudioPlayer(String name) {
		this.audioClip = Applet.newAudioClip(this.getClass().getResource(name));
	}

	public void play() {
			this.audioClip.play();
	}

	public void stop() {
		this.audioClip.stop();
	}
}
