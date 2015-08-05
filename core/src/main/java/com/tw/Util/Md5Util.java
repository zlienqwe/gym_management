package com.tw.Util;

import java.security.MessageDigest;

/**
 * Created by Zlien on 7/27/15.
 */

public class Md5Util {
    public static String md5(String str) {
        String md5 = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] barr = md.digest(str.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < barr.length; i++) {
                sb.append(byte2Hex(barr[i]));
            }
            String hex = sb.toString();
            md5 = hex.toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return md5;
    }

    public static String byte2Hex(byte b) {
        String[] h = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};
        int i = b;
        if (i < 0) {
            i += 256;
        }
        return h[i / 16] + h[i % 16];
    }
}
