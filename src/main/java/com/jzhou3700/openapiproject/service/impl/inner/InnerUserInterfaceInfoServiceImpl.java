package com.jzhou3700.openapiproject.service.impl.inner;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jzhou3700.openapicommon.model.entity.UserInterfaceInfo;
import com.jzhou3700.openapicommon.service.InnerUserInterfaceInfoService;
import com.jzhou3700.openapiproject.service.UserInterfaceInfoService;
import org.apache.dubbo.config.annotation.DubboService;
import org.apache.dubbo.config.annotation.Service;
import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;

import javax.annotation.Resource;

/**
 * @author Mac Jay
 * @date 2024年08月06日
 */

@DubboService
public class InnerUserInterfaceInfoServiceImpl implements InnerUserInterfaceInfoService {

    @Resource
    private UserInterfaceInfoService userInterfaceInfoService;
    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {


        return userInterfaceInfoService.invokeCount(interfaceInfoId, userId);
    }
}
