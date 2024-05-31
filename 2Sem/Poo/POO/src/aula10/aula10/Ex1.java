package aula10.aula10;

import java.util.Map;
import java.util.HashMap;

public class Ex1 {

    public static void main(String[] args){
        Map<String, String> map = new HashMap<>();

        map.put("Branco", "Que tem a cor da neve");
        map.put("Verde", "Que tem a cor das folhas");
        map.put("Vermelho", "Que tem a cor do fogo");
        map.put("Azul", "Que tem a cor do mar");
        map.put("Preto", "Que tem a cor da sombra");

        System.out.println(map.get("Branco"));
        System.out.println(map.get("Verde"));

        map.put ("Branco", "Que tem a cor do papel");
        map.put ("Verde", "Que tem a cor da natureza");
        map.put ("Vermelho", "Que tem a cor do sangue");

        map.remove("Preto");

        System.out.println(map.toString());
        System.out.println(map.keySet());
        System.out.println(map.values());

    }
    
}
