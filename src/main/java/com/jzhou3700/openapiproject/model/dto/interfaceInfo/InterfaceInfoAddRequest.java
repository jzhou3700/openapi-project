package com.jzhou3700.openapiproject.model.dto.interfaceInfo;

import lombok.Data;

import java.io.Serializable;

/**
 * 创建请求
 *
 * @author <a href="https://github.com/liyupi">程序员鱼皮</a>
 * @from <a href="https://yupi.icu">编程导航知识星球</a>
 */
@Data
public class InterfaceInfoAddRequest implements Serializable {


    private String name;

    /**
     * 描述
     */
    private String description;


    /**
     *
     */
    private String url;


    /**
     * 请求头
     */
    private String requestHeader;

    /**
     * 响应值
     */
    private String responseHeader;


    /**
     * 请求参数
     */
    private String requestParams;

    /**
     * 请求类型
     */
    private String method;


}