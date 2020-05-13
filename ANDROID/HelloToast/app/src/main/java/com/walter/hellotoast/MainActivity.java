package com.walter.hellotoast;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "TAG_MAIN_ACTIVITY";
    private static final String TAG_CONTATORE = "Contatore";
    //LE DEFINIZIONI DEGLI ATTRIBUTI DELLA CLASSE
    private int mCount = 0;         // questo è l'INTERO che mantiene il valore del contatore
    private TextView mShowCount;    // questo è IL TESTO MOSTRATO nell'activity. L'intero va trasformato in stringa
    private Button zeroButton;
    //====================================================================================//
    /**
     * Questo metodo viene eseguito ogni volta che l'Activity viene creata, ad esempio
     * - quando si avvia l'applicazione
     * - quando si gira il telefono
     * - quando si preme il quadrato (eseguiti onPause(), onStop() e onDestroy())
     *   e poi si ritorna all'app (eseguiti onCreate(), onStart() e onResume(),
     *   ma si perdono i valori delle variabili)
     * @param savedInstanceState un Bundle che serve per ricavare i dati salvati, ma che si perdono dopo l'onDestroy().
     *        Il Bundle è un contenitore di dati, possono essere salvati all'interno e ripristinati, ma
     *        SOLO durante l'esecuzione dell'applicazione. Dopo averla terminata i dati sono persi.
     *        Metodi utili:
     *          Salvare un intero nel bundle
     *           savedInstanceState.putInt(StringaChiave, intero da salvare)
     *
     *          Ottenere un intero dal bundle
     *           savedInstanceState.getInt(StringaChiave, [opzionale] intero di default restituito se non trova la StringaChiave)
     *
     *          Ci sono metodi simili per String, IntArray, Float, Long, ecc.
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // esegue onCreate di AppCompatActivity
        super.onCreate(savedInstanceState);
        Log.d(TAG, "onCreate");
        // imposta il layout corrente con R.layout.activity.main
        setContentView(R.layout.activity_main);
        //INIZIALIZZO l'attributo per poi richiamarlo sotto in incrementaContatore()
        mShowCount = (TextView) findViewById(R.id.show_count);
        zeroButton = findViewById(R.id.id_zero_button);
        // Il casting a TextView non serve: findViewById restituisce un qualsiasi
        // oggetto che estende View, compresa una TextView

        /***
         * savedInstanceState!=null significa
         */
        if (savedInstanceState!=null){
            mCount = savedInstanceState.getInt(TAG_CONTATORE);
            mShowCount.setText(String.valueOf(mCount));
            if (mCount == 0)
                zeroButton.setBackgroundResource(R.color.colorAccent);
            else
                zeroButton.setBackgroundResource(R.color.colorBlue);
        }

    }
    //====================================================================================//


    @Override
    protected void onStart() {
        super.onStart();
        Log.d(TAG, "onStart");
    }

    @Override
    protected void onResume(){
        super.onResume();
        Log.d(TAG, "onResume");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d(TAG, "onPause");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d(TAG, "onStop");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt(TAG_CONTATORE, mCount);
    }

    /**
     * Funzione creata da te. Mostra un toast con il messaggio tradotto "toast_message".
     * @param view NON SERVE, Chiamata dal bottone ButtonToast nell'xml.
     */
    public void mostraToast(View view) {
        //CREO UN ISTANZA
        //CODICE-> toast_message.01.02 (ISTANZA MESSAGGIO)
        Toast toast = Toast.makeText(this,
                R.string.toast_message,
                Toast.LENGTH_SHORT);
        toast.show();
    }
    //====================================================================================//

    /**
     * Funzione creata da te. Incrementa il contatore intero e
     * aggiorna la textview con il nuovo valore. Chiamata dal button Count
     * @param view NON SERVE: viene chiamato dal bottone Count
     */
    public void incrementaContatore(View view) {
        //INCREMENTO IL contatore INTERO
        mCount++;
        //AGGIORNA IL TESTO DELLA TextView
        if (mShowCount != null)
            mShowCount.setText(String.valueOf(mCount));
        if (zeroButton != null)
            zeroButton.setBackgroundResource(R.color.colorBlue);
    }

    /**
     * METODO
     * EVENTO AZZERA chiamato dal button azzero
     * @param view
     */
    public void azzeroContatore(View view) {
        mCount=0;

        mShowCount.setText(R.string.zero_number);
        if (zeroButton!=null)
            zeroButton.setBackgroundResource(R.color.colorAccent);
    }
}