package com.jzhou3700.openapiproject.service.impl.inner;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jzhou3700.openapicommon.model.entity.InterfaceInfo;
import com.jzhou3700.openapicommon.service.InnerInterfaceInfoService;
import com.jzhou3700.openapiproject.common.ErrorCode;
import com.jzhou3700.openapiproject.exception.BusinessException;
import com.jzhou3700.openapiproject.mapper.InterfaceInfoMapper;
import org.apache.commons.lang3.StringUtils;
import org.apache.dubbo.config.annotation.DubboService;
import org.apache.ibatis.annotations.Mapper;

import javax.annotation.Resource;

/**
 * @author Mac Jay
 * @date 2024年08月06日
 */
@DubboService
public class InnerInterfaceInfoserviceImpl implements InnerInterfaceInfoService {

    @Resource
    private InterfaceInfoMapper interfaceInfoMapper;

    @Override
    public InterfaceInfo getInterfaceInfo(String path, String method) {
        if (StringUtils.isBlank(path) || StringUtils.isBlank(method)){
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        QueryWrapper<InterfaceInfo> queryWrapper = new QueryWrapper<InterfaceInfo>();
        queryWrapper
                .eq("url", path)
                .eq("method", method);
        return interfaceInfoMapper.selectOne(queryWrapper);
    }
}
