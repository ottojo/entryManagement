package jonasotto.virtualkey;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;


/**
 * A simple {@link Fragment} subclass.
 * Use the {@link GetIdFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class GetIdFragment extends Fragment {

    EditText pinText;
    Button getIdButton;
    TextView idView;
    RequestQueue queue;
    EditText removePinText;
    Button removeButton;

    public GetIdFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @return A new instance of fragment GetIdFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static GetIdFragment newInstance() {
        GetIdFragment fragment = new GetIdFragment();
        Bundle args = new Bundle();
        fragment.setArguments(args);
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
        View view = inflater.inflate(R.layout.fragment_get_id, container, false);
        pinText = (EditText) view.findViewById(R.id.pinText);
        getIdButton = (Button) view.findViewById(R.id.getIdButton);
        removeButton = (Button) view.findViewById(R.id.removePinButton);
        removePinText = (EditText) view.findViewById(R.id.removePinText);
        idView = (TextView) view.findViewById(R.id.idText);
        queue = Volley.newRequestQueue(view.getContext());
        getIdButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
                String espIp = sharedPref.getString("espIp", "0.0.0.0");

                String url = "http://" + espIp + "/getId?pin=" + pinText.getText().toString();
                Log.d("GETID", "URL: " + url);


                // Request a string response from the provided URL.
                StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                Log.d("GETID", "Response is: " + response);
                                idView.setText(response);
                            }
                        }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("GETID", "No response");
                    }
                });

                queue.add(stringRequest);
            }
        });
        removeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
                String espIp = sharedPref.getString("espIp", "0.0.0.0");

                String url = "http://" + espIp + "/removePin?pin=" + removePinText.getText().toString() + "&masterPin=" + pinText.getText().toString();
                Log.d("REMOVEPIN", "URL: " + url);


                // Request a string response from the provided URL.
                StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                Log.d("REMOVEPIN", "Response is: " + response);
                                idView.setText(response);
                            }
                        }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("REMOVEPIN", "No response");
                    }
                });

                queue.add(stringRequest);
            }
        });


        return view;
    }

    // TODO: Rename method, update argument and hook method into UI event
    public void onButtonPressed(Uri uri) {
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

}
