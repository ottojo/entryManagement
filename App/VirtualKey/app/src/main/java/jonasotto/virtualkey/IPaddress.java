package jonasotto.virtualkey;

import java.security.InvalidParameterException;

/**
 * Created by Jonas Otto on 19.01.2016.
 */
public class IPaddress {
    public static String ipAddressRegex = "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\b";
    private String address;


    public IPaddress(String ipString) {
        update(ipString);
    }

    public boolean checkString(String ipString) {
        return (ipString.matches(ipAddressRegex));
    }

    public String toString() {
        return address;
    }

    public void update(String ipString) {
        if (checkString(ipString)) {
            address = ipString;
        } else {
            throw new InvalidParameterException("IP: " + ipString + " MATCHING: " + String.valueOf(checkString(ipString)));
        }
    }
}
