package aula11.Ex1;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;


public class Ex1 {
    public static void main(String[] args) throws IOException {
        ArrayList<String> list = new ArrayList<>();
        Map<String, Map<String, Integer>> map = new TreeMap<>();
        
        load(list, "src/aula11/Ex1/words.txt");
            
            for(int i = 0; i<list.size()-1; i++){
                Map<String, Integer> mapalt = new TreeMap<>();
                map.put(list.get(i), mapalt);
            }

            for(int i = 0; i<list.size()-1; i++){
                String primeiro = list.get(i);
                String segundo = list.get(i+1);
                map.get(primeiro).put(segundo, map.get(primeiro).getOrDefault(segundo, 0) + 1);
            }

            for (String par : map.keySet()) {
                for (String seg : map.get(par).keySet()) {
                    System.out.println(par + "={" + seg + "=" + map.get(par).get(seg)+"}");
                }
            }
                
        }

    public static void load(ArrayList<String> list, String path) throws IOException {
        Scanner input = new Scanner(new FileReader(path));
        String palavras = "";
        while (input.hasNext()) {
            palavras = palavras + " " + input.next();
        }
    
        for (String palavra : palavras.replaceAll("[\\t\\n\\.\\,\\:\\'\\‘\\’\\;\\?\\!\\-\\*\\{\\}\\=\\+\\&\\/\\\\(\\)\\[\\]\\”\\“\\\"\\']", " ").split(" ")) {
            if (palavra.length() >= 3) {
            list.add(palavra);
            }
        }
    }
}
