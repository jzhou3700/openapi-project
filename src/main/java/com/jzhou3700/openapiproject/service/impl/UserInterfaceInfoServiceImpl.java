package com.jzhou3700.openapiproject.service.impl;

import com.jzhou3700.openapicommon.model.entity.UserInterfaceInfo;
import com.jzhou3700.openapiproject.common.ErrorCode;
import com.jzhou3700.openapiproject.exception.BusinessException;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jzhou3700.openapiproject.service.UserInterfaceInfoService;
import com.jzhou3700.openapiproject.mapper.UserInterfaceInfoMapper;
import org.springframework.stereotype.Service;

/**
* @author Mac Jay
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service实现
* @createDate 2024-07-20 18:00:31
*/
@Service
public class UserInterfaceInfoServiceImpl extends ServiceImpl<UserInterfaceInfoMapper, UserInterfaceInfo>
    implements UserInterfaceInfoService{

    @Override
    public void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add) {
        if (userInterfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        if(add ){
            if(userInterfaceInfo.getInterfaceInfoId()<=0 || userInterfaceInfo.getUserId()<=0){
                throw new BusinessException(ErrorCode.PARAMS_ERROR,"接口或用户不存在");
            }

        }
        if (userInterfaceInfo.getLeftNum() < 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "剩余次数不能小于 0");
        }

    }

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {

        if (interfaceInfoId<= 0 || userId<=0 ){
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        UpdateWrapper<UserInterfaceInfo> updateWrapper = new UpdateWrapper<>();

        updateWrapper.eq("interfaceInfoId",interfaceInfoId);
        updateWrapper.eq("userId",userId);
        updateWrapper.setSql("leftNum =leftNum-1, totalNum = totalNum+1");
        return this.update(updateWrapper);
    }
}




