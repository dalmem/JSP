package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRL {
	private static List<User> userList = new ArrayList<>();//DB가정
	
	public UserRL() {
		
	}
	
	

	public void add(User user) {

		userList.add(user);
		
	}
	public User getUser(String id) {
		User info =null;
		for (int j = 0; j < userList.size(); j++) {
			if(userList.get(j).getId().equals(id)) {
				info =userList.get(j);
			}
			
		}
		return info;
		
	}
	public void delete(String id) {
		userList.remove(getUser(id));
	}
	
	
	
}
