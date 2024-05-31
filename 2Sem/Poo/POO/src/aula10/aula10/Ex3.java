package aula10.aula10;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

public class Ex3 {
    public static void main(String[] args) {
        System.out.println(CharPos("Hello World"));
    }
    
    public static String CharPos(String str){
    Map<Character, ArrayList<Integer>> map = new HashMap<>();
        for(int i = 0; i < str.length(); i++){
            char c = str.charAt(i);
            map.put(c, new ArrayList<Integer>());
        }
        for(int i = 0; i < str.length(); i++){
            char c = str.charAt(i);
            map.get(c).add(i);
        }
    return map.toString();
         
    }
}
