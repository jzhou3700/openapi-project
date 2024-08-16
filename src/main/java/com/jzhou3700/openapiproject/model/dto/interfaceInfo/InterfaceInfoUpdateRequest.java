package com.jzhou3700.openapiproject.model.dto.interfaceInfo;

import lombok.Data;

import java.io.Serializable;
import java.security.PrivateKey;
import java.util.Date;

/**
 * 更新请求
 *
 * @author <a href="https://github.com/liyupi">程序员鱼皮</a>
 * @from <a href="https://yupi.icu">编程导航知识星球</a>
 */
@Data
public class InterfaceInfoUpdateRequest implements Serializable {


    private Long id;

    private String name;

    /**
     * 描述
     */
    private String description;

    /**
     * 更新时间
     */
    private Date update_time;

    /**
     *
     */
    private String url;


    /**
     * 请求头
     */
    private String requestHeader;


    /**
     * 请求类型
     */
    private String method;

    /**
     * 用户名
     */
    private Long userId;

    private Date updateTime;

}
