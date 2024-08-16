package com.jzhou3700.openapiproject.model.dto.interfaceInfo;

import com.jzhou3700.openapiproject.common.PageRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 查询请求
 *
 * @author <a href="https://github.com/liyupi">程序员鱼皮</a>
 * @from <a href="https://yupi.icu">编程导航知识星球</a>
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class InterfaceInfoQueryRequest extends PageRequest implements Serializable {


    private Long id;

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
     * 请求类型
     */
    private String method;

    /**
     * 创建人
     */
    private Long userId;

}