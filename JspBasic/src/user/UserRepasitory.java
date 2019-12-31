package user;

import java.util.ArrayList;
import java.util.List;

public class UserRepasitory {
	private static List<User> userlist = new ArrayList<>();
	
	public static void save(User user) {
		userlist.add(user);
	}
	

	public static void showUsers() {
		System.out.println("### 회원 정보###");
		for(User user : userlist) {
			System.out.println("아이디 : " + user.getAccount());
			System.out.println("비밀번호 : " + user.getPassword());
			System.out.println("이름: " + user.getName());
			System.out.println("별명 : " + user.getNickname());
			System.out.println("============================");
		}
	}
	
	//계정명을 통해 해당 계정명의 정보를 가지고 있는 User객체를 리턴하는 메서드
	public static User getUser(String inputId) {
		for(User user : userlist) {
			if(user.getAccount().equals(inputId)) {
				return user;
			}
		}
		return null;
	}
	
	public static void deleteUser(String accout) {
		userlist.remove(getUser(accout));
	}
	public static List<User> getUserlist() {
		return userlist;
	}

	public static void setUserlist(List<User> userlist) {
		UserRepasitory.userlist = userlist;
	}

}
