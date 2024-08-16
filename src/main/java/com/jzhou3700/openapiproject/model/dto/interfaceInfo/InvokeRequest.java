package com.jzhou3700.openapiproject.model.dto.interfaceInfo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author Mac Jay
 * @date 2024年08月15日
 */
@Data
public class InvokeRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long id;
    private List<Field> requestParams;
    private String userRequestParams;

    @Data
    public static class Field{
        private String fieldName;
        private String value;
    }

}
