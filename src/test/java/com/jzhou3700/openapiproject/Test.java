package com.jzhou3700.openapiproject;

import cn.hutool.http.HttpUtil;

import java.util.HashMap;

/**
 * @author Mac Jay
 * @date 2024年08月09日
 */
public class Test {
    public static void main(String[] args) {
        System.out.println(HttpUtil.get("http://localhost:8123/api/user/"));
        System.out.println(HttpUtil.post("http://localhost:8123/api/user/","name==nppm"));

    }
}
