package aula12.Ex1;

import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;
import java.util.Set;
import java.util.TreeSet;

public class Ex1 {
    public static void main(String[] args) throws IOException {
        Set<String> words = new TreeSet<>();
        int wordcount = 0;
        FileReader fr = new FileReader("src/aula12/lusiadas.txt");
        Scanner sc = new Scanner(fr);
        String word = "";
        while (sc.hasNext()) word = words + " " + sc.next();
        sc.close(); fr.close();
        String[] wordArray = word.split(" ");
        for (int i = 0; i < wordArray.length; i++) {
            if (wordArray[i].length() > 3) {
                words.add(wordArray[i]);
                wordcount++;
            }
        }
        System.out.println("Numero Total de Palavras: " + wordcount);
        System.out.println("Numero de Diferentes Palavras: " + words.size());

    }
}