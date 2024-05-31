package aula10.aula10;
import java.util.Map;
import java.util.TreeMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.lang.Math;

public class Ex2 {

    public static String getEspecial(Map<String, ArrayList<String>> mapa, String chave) {
        return mapa.get(chave).get(numeroRandom(0,mapa.get(chave).size()-1));
    }

    public static int numeroRandom(int min, int max){
        int intervalo = (max - min) + 1;     
        return (int)(Math.random() * intervalo) + min;
    }
    

    public static void main(String[] args){
        Map<String, ArrayList<String>> map = new TreeMap<>();


        map.put("Branco", new ArrayList<String>(Arrays.asList("Que tem a cor da neve")));
        map.put("Verde", new ArrayList<String>(Arrays.asList("Que tem a cor das folhas")));
        map.put("Vermelho", new ArrayList<String>(Arrays.asList("Que tem a cor do fogo")));
        map.put("Azul", new ArrayList<String>(Arrays.asList("Que tem a cor do mar")));
        map.put("Preto", new ArrayList<String>(Arrays.asList("Que tem a cor da sombra")));

        System.out.println(map.get("Branco"));  
        System.out.println(map.get("Verde"));

        map.put ("Branco", new ArrayList<String>(Arrays.asList("Que tem a cor do papel")));
        map.put ("Verde", new ArrayList<String>(Arrays.asList("Que tem a cor da natureza")));
        map.put ("Vermelho", new ArrayList<String>(Arrays.asList("Que tem a cor do sangue")));
        
        map.get("Branco").add("Que tem a cor do leite");
        map.get("Verde").add("Que tem a cor da lima");
        map.get("Vermelho").add("Que tem a cor do coração");

        map.remove("Preto");

        System.out.printf(getEspecial(map, "branco"));
        System.out.printf(getEspecial(map, "azul"));

        System.out.println(map.toString());
        System.out.println(map.keySet());
        System.out.println(map.values());

    }
    
}


