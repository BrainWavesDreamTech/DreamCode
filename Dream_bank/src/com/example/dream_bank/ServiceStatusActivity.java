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

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class ServiceStatusActivity extends ActionBarActivity {
	TextView tbranch;
	TextView tcounter;
	TextView waiting;
	TextView processing;
	Button b1;
	String display;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_service_status);
		Bundle b=getIntent().getExtras();
		final String branch=b.getString("Branch");
		final String counter=b.getString("Counter");
		tbranch=(TextView)findViewById(R.id.branch);
		tcounter=(TextView)findViewById(R.id.counter);
		waiting=(TextView)findViewById(R.id.waiting);
		processing=(TextView)findViewById(R.id.processing);
		processing.setText("jj");
		b1=(Button)findViewById(R.id.check);
		
		 int token=0;
			int proce=0;
	String status;
	//String[] result1 =new String[200] ;
	String result="";
	InputStream isr = null;
	try{
		ArrayList<NameValuePair> feed=new ArrayList<NameValuePair>();
		feed.add(new BasicNameValuePair("branch", branch));
		feed.add(new BasicNameValuePair("counter", counter));
     HttpClient httpclient = new DefaultHttpClient();
     HttpPost httppost = new HttpPost("http://10.0.2.2/tokens1.php"); //YOUR PHP SCRIPT ADDRESS 
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
	   //tbranch.setText("hello");
	   //tcounter.setText("hello");
	   //waiting.setText("hello");
	   //processing.setText("hello");
}
/*

*/
} catch (Exception e) {
// TODO: handle exception
Log.e("log_tag", "Error Parsing Data "+e.toString());
}
int wait=token-proce;
tbranch.setText(branch);
tcounter.setText(String.valueOf(proce));
waiting.setText(String.valueOf(wait));
processing.setText(counter);	
final int token1=token;		
		
		b1.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent();
				Bundle b=new Bundle();
				b.putString("Branch",branch);
				b.putString("Counter",counter);
				b.putString("token",String.valueOf(token1));
				in.putExtras(b);
				in.setClass(ServiceStatusActivity.this, AvailServiceActivity.class);
				startActivity(in);
				
			}
		});
		//ArrayList<NameValuePair> feed=new ArrayList<NameValuePair>();
		 // httppost.setEntity(new UrlEncodedFormEntity(feed));
		
	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.service_status, menu);
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
