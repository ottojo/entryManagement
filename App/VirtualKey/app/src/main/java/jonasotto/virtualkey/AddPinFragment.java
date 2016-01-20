package jonasotto.virtualkey;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;


/**
 * A simple {@link Fragment} subclass.
 * Use the {@link AddPinFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class AddPinFragment extends Fragment {

    EditText pinText;
    Button addButton;
    RequestQueue queue;


    public AddPinFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @return A new instance of fragment AddPinFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static AddPinFragment newInstance() {
        AddPinFragment fragment = new AddPinFragment();
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
        View view = inflater.inflate(R.layout.fragment_add_pin, container, false);
        pinText = (EditText) view.findViewById(R.id.pinText);
        addButton = (Button) view.findViewById(R.id.addButton);
        queue = Volley.newRequestQueue(view.getContext());
        addButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
                String espIp = sharedPref.getString("espIp", "0.0.0.0");

                String url = "http://" + espIp + "/addPin?pin=" + pinText.getText().toString();
                Log.d("ADDPIN", "URL: " + url);


                // Request a string response from the provided URL.
                StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                Log.d("ADDPIN", "Response is: " + response);
                            }
                        }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("ADDPIN", "No response");
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


}
