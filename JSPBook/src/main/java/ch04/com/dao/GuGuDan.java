package ch04.com.dao;

import java.util.ArrayList;
import java.util.List;

public class GuGuDan {
	public List<String> getGuGuResult(int n){
		List<String> list = new ArrayList<String>();
		for(int i = 2; i <= 9; i++) {
			int val = i * n;
			String result = n + " X " + i + "= " + val;
			list.add(result);
		}
		
		return list;
	}
}
