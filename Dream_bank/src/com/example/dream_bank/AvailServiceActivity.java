package com.example.dream_bank;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import android.widget.Toast;

public class AvailServiceActivity extends ActionBarActivity {

	TextView tbranch;
	TextView tcounter;
	TextView waiting;
	TextView processing;
	TextView mytoken;
	String display;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_avail_service);
		Bundle b=getIntent().getExtras();;
		final String branch=b.getString("Branch");
		final String counter=b.getString("Counter");
		final String token1=b.getString("token");
		tbranch=(TextView)findViewById(R.id.branch);
		tcounter=(TextView)findViewById(R.id.counter);
		waiting=(TextView)findViewById(R.id.waiting);
		processing=(TextView)findViewById(R.id.processing);
		mytoken=(TextView)findViewById(R.id.mytoken);
		getDetails(branch,counter,token1);
		
		int token=0,proce=0;
		String status;
    	//String[] result1 =new String[200] ;
    	String result="";
    	InputStream isr = null;
    	try{
    		ArrayList<NameValuePair> feed=new ArrayList<NameValuePair>();
    		feed.add(new BasicNameValuePair("branch", branch));
    		feed.add(new BasicNameValuePair("counter", counter));
    		feed.add(new BasicNameValuePair("token", token1));
            HttpClient httpclient = new DefaultHttpClient();
            HttpPost httppost = new HttpPost("http://10.0.2.2/tokens2.php"); //YOUR PHP SCRIPT ADDRESS 
            httppost.setEntity(new UrlEncodedFormEntity(feed));
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
		   //tbranch.setText(json.getString("branch"));
		  // tcounter.setText(json.getString("counter"));
		   //waiting.setText(json.getInt("token_no"));
		   //processing.setText(json.getString("status"));
		   status=json.getString("status");
		   if(!(status.equals("done")))
		   {
   token=json.getInt("token_no");
		   }
   if(status.equals("processing"))
   {
	   proce=token;
	   
   }
	   }
	   int wait=proce-token;
	   tbranch.setText(branch);
	   tcounter.setText(counter);
	   waiting.setText(String.valueOf(wait-1));
	   processing.setText(String.valueOf(proce));
	   mytoken.setText(String.valueOf(token+1));
   } catch (Exception e) {
	// TODO: handle exception
	   Log.e("log_tag", "Error Parsing Data "+e.toString());
   }
  
		
		//ArrayList<NameValuePair> feed=new ArrayList<NameValuePair>();
		 // httppost.setEntity(new UrlEncodedFormEntity(feed));
		
	}
//getdetails
	public void getDetails(String branch,String counter,String token1){
		int token=0,proce=0;
		String status;
    	//String[] result1 =new String[200] ;
    	String result="";
    	InputStream isr = null;
    	try{
    		ArrayList<NameValuePair> feed=new ArrayList<NameValuePair>();
    		feed.add(new BasicNameValuePair("branch", branch));
    		feed.add(new BasicNameValuePair("counter", counter));
    		feed.add(new BasicNameValuePair("token", token1));
            HttpClient httpclient = new DefaultHttpClient();
            HttpPost httppost = new HttpPost("http://10.0.2.2/tokens2.php"); //YOUR PHP SCRIPT ADDRESS 
            httppost.setEntity(new UrlEncodedFormEntity(feed));
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
		   //tbranch.setText(json.getString("branch"));
		  // tcounter.setText(json.getString("counter"));
		   //waiting.setText(json.getInt("token_no"));
		   //processing.setText(json.getString("status"));
		   
		   token=json.getInt("token_no");
		   status=json.getString("status");
		   if(status=="processing")
		   {
			   proce=token;
		   }
	   }
	   int wait=proce-token;
	   tbranch.setText(branch);
	   tcounter.setText(counter);
	   waiting.setText(wait);
	   processing.setText(proce);
	   mytoken.setText(token+1);
   } catch (Exception e) {
	// TODO: handle exception
	   Log.e("log_tag", "Error Parsing Data "+e.toString());
   }
  
   
}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.avail, menu);
		return true;
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
