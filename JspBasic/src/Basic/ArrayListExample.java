package Basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ArrayListExample {

	public static void main(String[] args) {
		
		String[] str = new String[100];
		List<String> list = new ArrayList<>();
		
		String str1 = "짜장면";
		//List에 객체를 추가하는 메서드 : add(객체)
		list.add("치킨");
		list.add("삼겹살");
		list.add("피자");
		list.add(str1);
		list.add("치킨"); //list는 객체의 중복 저장을 허용합니다.
		
		//list에 객체 삽입(내가 지정한 위치에) : add(index, 객체) : 해당 인덱스에 객체를 삽입.
		list.add(2, "아이스크림");
		System.out.println(list);
		
		//list.size() : list의 크기(저장된 객체수 얻기)
		System.out.println("list 저장된 객체의 수:" + list.size());
		
		//list에 저장된 객체 얻기
		//String food = list[4];
		String food = list.get(4);
		System.out.println("4번 인덱스의 값 : " + food);
		
		//list내부에 저장된 객체의 존재 유무를 파익 : contains(객체)
		System.out.println(list.contains("탕수육"));
		
		//list 향상 for문
		for(String n : list) {
			System.out.println(n);
		}
		
		//list의 내부 객체 삭제
		list.remove(3);
		System.out.println(list);
		list.remove("아이스크림");
		System.out.println(list);
		
		//리스트 내부 객체의 인덱스 확인 : indexOf(객체)
		int idx = list.indexOf("짜장면");
		System.out.println("짜장면의 인덱스 : " + idx);
		
		//list 내부 객체 전체 삭지 : clear()
		list.clear();
		System.out.println((list));
		
		//리스트의 정렬
		List<Integer> scores = new ArrayList<>();
		
		scores.add(95);
		scores.add(47);
		scores.add(23);
		scores.add(66);
		scores.add(50);
		scores.add(100);
		
		System.out.println(scores);
		
		//오름차 정렬
		Collections.sort(scores);
		System.out.println(scores);
		
		//내림차 정렬
		Collections.sort(scores, Collections.reverseOrder());
		System.out.println(scores);
	}

}
