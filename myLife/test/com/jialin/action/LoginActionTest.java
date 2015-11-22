package com.jialin.action;

import static org.mockito.Mockito.*;

import java.util.List;

import org.junit.Test;

public class LoginActionTest {
	@Test
	public void testLogin(){
		//mock creation  
		List mockList = mock(List.class);
		
		//using mock object
		mockList.add("one");
		mockList.clear();
		mockList.add("3");
		
		//verification
		verify(mockList).add("one");
		verify(mockList).clear();
		//verify(mockList).add("2");
		//this will throw an exception
	}
}
