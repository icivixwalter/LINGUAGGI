
//libreria di funzionamento
import java.awt.*;
import java.util.*;

//classe denominata Hac ed in Java deve avere lo stesso nome del file.java
public class Hac{

    public static void main(String[] args) throws Exception{
        Robot hal = new Robot();
        Random random = new Random();
        int tempo = 15;
        int icount =0;  //contatore
        // bloccato per il controllo
        System.out.println("Ora il mouse si dovrebbe muovere ogni tanto. Per terminare, Su Intellij premi Ctrl+(Fn)+F2, su linea di comando premi Ctrl+C.");
        //ciclo infinito di spostamenti del mouse con x,y random
        while(true){
            //ritardo 6.000 secondi
            hal.delay(1000 * tempo);
            int x = random.nextInt() % 640;
            int y = random.nextInt() % 480;

            //stampo il contatore del tempo
            icount=icount+1;
            System.out.println("Stampo nro di spostamenti mouse: "+ icount );

            //comando muovi mouse
            hal.mouseMove(x,y);
            

        }
    }
}

//attenzione per la compilazione andare in CMD nella stessa cartella del 
//file Hac.java e scrivere i seguenti comandi:
//01 : javac Hac.java    //per compilare in java.
//02 : java Hac         // per far partire l'eseguibile