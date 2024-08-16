package com.jzhou3700.openapiproject.service.impl;

import com.jzhou3700.openapicommon.model.entity.InterfaceInfo;
import com.jzhou3700.openapiproject.common.ErrorCode;
import com.jzhou3700.openapiproject.exception.BusinessException;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jzhou3700.openapiproject.service.InterfaceInfoService;
import com.jzhou3700.openapiproject.mapper.InterfaceInfoMapper;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
* @author Mac Jay
* @description 针对表【interface_info(接口信息)】的数据库操作Service实现
* @createDate 2024-05-10 08:56:33
*/
@Service
public class InterfaceInfoServiceImpl extends ServiceImpl<InterfaceInfoMapper, InterfaceInfo>
    implements InterfaceInfoService {

    @Override
    public void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add){
        if(interfaceInfo == null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        String name = interfaceInfo.getName();

        if(add){
            if(StringUtils.isAnyBlank(name)){
                throw new BusinessException(ErrorCode.PARAMS_ERROR);
            }
        }
        if(StringUtils.isNotBlank(name) && name.length()>9190){
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"名称过长");
        }
    }

}




