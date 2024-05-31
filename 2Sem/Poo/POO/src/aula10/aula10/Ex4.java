package aula10.aula10;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;


public class Ex4 {
    public static void main(String[]args)throws IOException{
        Set<String> palavras = new HashSet<>();
        List(palavras, "POO/src/aula10/aula10/words.txt");
        PalavraTerminaEm(palavras, "s");
        Remove(palavras);
        System.out.println(palavras);
    }    
        
    public static void List(Set<String> words, String caminho) throws IOException {
        Scanner input = new Scanner(new FileReader(caminho));
        while (input.hasNext()) {
            String word = input.next();
            if (word.length() > 2) {
                words.add(word);
            }
        }
    }

    public static void Remove(Set<String> palavras) {
        Set<String> set = new HashSet<>();
        for (String palavra : palavras) {
            if (palavra.matches("[a-zA-Z]+")) {
                set.add(palavra);
            }
        }
        palavras.clear();
        palavras.addAll(set);
    }
    
    public static void PalavraTerminaEm(Set<String> palavras, String endChar) {
        for (String palavra : palavras) {
            if (palavra.endsWith(endChar)) {
                System.out.println(palavra);
            }
        }
    }
}
