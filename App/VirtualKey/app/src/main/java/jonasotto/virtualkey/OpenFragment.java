package jonasotto.virtualkey;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.security.InvalidParameterException;


/**
 * A simple {@link Fragment} subclass.
 * Use the {@link OpenFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class OpenFragment extends Fragment {
    EditText ipText;
    EditText pinText;
    TextView localIpText;
    Button connectButton;
    Button openButton;
    IPaddress espIp;
    /**
     * This interface must be implemented by activities that contain this
     * fragment to allow an interaction in this fragment to be communicated
     * to the activity and potentially other fragments contained in that
     * activity.
     * <p/>
     * See the Android Training lesson <a href=
     * "http://developer.android.com/training/basics/fragments/communicating.html"
     * >Communicating with Other Fragments</a> for more information.
     */

    RequestQueue queue;

    public OpenFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @return A new instance of fragment OpenFragment.
     */
    public static OpenFragment newInstance() {
        OpenFragment fragment = new OpenFragment();
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        final View view = inflater.inflate(R.layout.fragment_open, container, false);
        queue = Volley.newRequestQueue(view.getContext());

        ipText = (EditText) view.findViewById(R.id.ipText);
        pinText = (EditText) view.findViewById(R.id.pinText);
        localIpText = (TextView) view.findViewById(R.id.ownIpText);
        discoverEsp();
        connectButton = (Button) view.findViewById(R.id.connectButton);
        connectButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d("IP", ipText.getText().toString());
                Log.d("IP", String.valueOf(ipText.getText().toString().matches("\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\b")));
                try {
                    espIp = new IPaddress(ipText.getText().toString());


                } catch (InvalidParameterException e) {
                    Toast.makeText(v.getContext(), "IP NOT VALID", Toast.LENGTH_SHORT).show();
                    e.printStackTrace();
                }
            }
        });

        openButton = (Button) view.findViewById(R.id.openButton);
        openButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String url = "http://" + espIp.toString() + "/open?pin=" + pinText.getText().toString();
                Log.d("OPENING", "requesting " + url);

                // Request a string response from the provided URL.
                StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                // Display the first 500 characters of the response string.
                                Log.d("RESPONSE", "Response is: " + response);
                            }
                        }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("RESPONSE", "That didn't work!");

                    }
                });

                queue.add(stringRequest);

            }
        });

        return view;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    void discoverEsp() {
        WifiManager wifiMgr = (WifiManager) getActivity().getSystemService(getActivity().WIFI_SERVICE);
        WifiInfo wifiInfo = wifiMgr.getConnectionInfo();
        int localIp = wifiInfo.getIpAddress();
        String myIp = Formatter.formatIpAddress(localIp);
        String ipRange = myIp.substring(0, myIp.lastIndexOf("."));
        Log.d("IP RANGE", ipRange);
        for (int i = 0; i < 256; i++) {
            Log.d("ESPSEARCH", "starting test for " + i);
            testForEsp(ipRange + "." + i);
        }

    }


    void testForEsp(final String ipAddress) {
        final String url = "http://" + ipAddress + "/testEsp";
        Log.d("ESPSEARCH", "Requesting " + url);
        // Request a string response from the provided URL.
        StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        // Display the first 500 characters of the response string.
                        Log.d("ESPSEARCH", "Response is: " + response);
                        if (response.equals("ESP")) {
                            Log.d("ESPSEARCH", "ESP ON  " + url);
                            espIp = new IPaddress(ipAddress);
                            localIpText.setText(ipAddress);
                            SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
                            sharedPref.edit().putString("espIp", ipAddress).apply();
                            queue.cancelAll(new RequestQueue.RequestFilter() {
                                @Override
                                public boolean apply(Request<?> request) {
                                    return true;
                                }
                            });
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("ESPSEARCH", "No response from " + url);
            }
        });

        queue.add(stringRequest);
    }


}
