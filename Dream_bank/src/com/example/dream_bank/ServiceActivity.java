package com.example.dream_bank;



import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;

public class ServiceActivity extends Activity{
	Button b1;
	
	String branch,counter;
	Spinner s,s1;
	 String array_spinner_branch[],array_spinner_counter[];;
	@SuppressLint("NewApi") @Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_service);
		StrictMode.enableDefaults();
		 
	        // Here come all the options that you wish to show depending on the
	        // size of the array.		 
		ArrayList<String> r=getBranch();
		array_spinner_branch=new String[r.size()];
		for(int i=0;i<r.size();i++)
		array_spinner_branch[i]=r.get(i);
		
	        s = (Spinner) findViewById(R.id.spinner1);
	        ArrayAdapter adapter = new ArrayAdapter(this,
	        android.R.layout.simple_spinner_item, array_spinner_branch);
	        s.setAdapter(adapter);
	        s.setOnItemSelectedListener(new OnItemSelectedListener() {

				@Override
				public void onItemSelected(AdapterView<?> parent,
						View view, int position, long id) {
					// TODO Auto-generated method stub
					branch=s.getSelectedItem().toString();
				}

				@Override
				public void onNothingSelected(AdapterView<?> parent) {
					// TODO Auto-generated method stub
					
				}
	        	
			});
	        
	        
	        //Spinner 2
	        ArrayList<String> r1=getCounter();
	        array_spinner_counter=new String[r1.size()];
			for(int i=0;i<r1.size();i++)
			array_spinner_counter[i]=r1.get(i);
		        s1 = (Spinner) findViewById(R.id.spinner2);
		        ArrayAdapter adapter1 = new ArrayAdapter(this,
		        android.R.layout.simple_spinner_item, array_spinner_counter);
		        s1.setAdapter(adapter1);
		        s1.setOnItemSelectedListener(new OnItemSelectedListener() {

					@Override
					public void onItemSelected(AdapterView<?> parent,
							View view, int position, long id) {
						// TODO Auto-generated method stub
						counter=s1.getSelectedItem().toString();
					}

					@Override
					public void onNothingSelected(AdapterView<?> parent) {
						// TODO Auto-generated method stub
						
					}
		        	
				});
		        
		        b1=(Button)findViewById(R.id.button1);
		        b1.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						
						Intent in=new Intent();
						Bundle b=new Bundle();
						b.putString("Branch",branch);
						b.putString("Counter",counter);
						in.putExtras(b);
						in.setClass(ServiceActivity.this,ServiceStatusActivity.class);
						startActivity(in);
						
					
						
					}
				});
	}

	public ArrayList<String> getBranch(){
		ArrayList<String> result1=new ArrayList<String>();
    	//String[] result1 =new String[200] ;
    	String result="";
    	InputStream isr = null;
    	try{
            HttpClient httpclient = new DefaultHttpClient();
            HttpPost httppost = new HttpPost("http://10.0.2.2/tokens.php"); //YOUR PHP SCRIPT ADDRESS 
            HttpResponse response = httpclient.execute(httppost);
            HttpEntity entity = response.getEntity();
            isr = entity.getContent();
    		
    }
    catch(Exception e){
            Log.e("log_tag", "Error in http connection "+e.toString());
    }
    //convert response to string
    try{    
    	BufferedReader reader = new BufferedReader(new InputStreamReader(isr,"iso-8859-1"),8);   
    	StringBuilder sb = new StringBuilder();    
    	String line = null;  
    	while ((line = reader.readLine()) != null) {
                    sb.append(line + "\n");
            }
            isr.close();
     
            result=sb.toString();
    }
    catch(Exception e){
            Log.e("log_tag", "Error  converting result "+e.toString());
    }
     
    //parse json data
   try {
	   JSONArray jArray = new JSONArray(result);
	   int size=jArray.length();
	   String[] string=new String[size];
	   Toast.makeText(getApplicationContext(), "text", Toast.LENGTH_LONG).show();
	   for(int i=0;i<size;i++){
		   JSONObject json = jArray.getJSONObject(i);
		   string[i] =json.getString("branch");
		   result1.add(string[i]);
	   }
   } catch (Exception e) {
	// TODO: handle exception
	   Log.e("log_tag", "Error Parsing Data "+e.toString());
   }
   return result1;
   
}
	//get counter
	
	public ArrayList<String> getCounter(){
		ArrayList<String> result1=new ArrayList<String>();
    	//String[] result1 =new String[200] ;
    	String result="";
    	InputStream isr = null;
    	try{
            HttpClient httpclient = new DefaultHttpClient();
            HttpPost httppost = new HttpPost("http://10.0.2.2/tokens.php"); //YOUR PHP SCRIPT ADDRESS 
            HttpResponse response = httpclient.execute(httppost);
            HttpEntity entity = response.getEntity();
            isr = entity.getContent();
    		
    }
    catch(Exception e){
            Log.e("log_tag", "Error in http connection "+e.toString());
    }
    //convert response to string
    try{    
    	BufferedReader reader = new BufferedReader(new InputStreamReader(isr,"iso-8859-1"),8);   
    	StringBuilder sb = new StringBuilder();    
    	String line = null;  
    	while ((line = reader.readLine()) != null) {
                    sb.append(line + "\n");
            }
            isr.close();
     
            result=sb.toString();
    }
    catch(Exception e){
            Log.e("log_tag", "Error  converting result "+e.toString());
    }
     
    //parse json data
   try {
	   JSONArray jArray = new JSONArray(result);
	   int size=jArray.length();
	   String[] string=new String[size];
	   Toast.makeText(getApplicationContext(), "text", Toast.LENGTH_LONG).show();
	   for(int i=0;i<size;i++){
		   JSONObject json = jArray.getJSONObject(i);
		   string[i] =json.getString("counter");
		   result1.add(string[i]);
	   }
   } catch (Exception e) {
	// TODO: handle exception
	   Log.e("log_tag", "Error Parsing Data "+e.toString());
   }
   return result1;
   
}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
