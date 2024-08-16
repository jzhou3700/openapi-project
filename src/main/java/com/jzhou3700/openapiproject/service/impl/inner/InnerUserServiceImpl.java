package com.jzhou3700.openapiproject.service.impl.inner;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jzhou3700.openapicommon.model.entity.User;
import com.jzhou3700.openapicommon.service.InnerUserService;
import com.jzhou3700.openapiproject.mapper.UserMapper;
import org.apache.dubbo.config.annotation.DubboService;
import org.apache.ibatis.annotations.Mapper;

import javax.annotation.Resource;

/**
 * @author Mac Jay
 * @date 2024年08月06日
 */
@DubboService
public class InnerUserServiceImpl implements InnerUserService {

    @Resource
    private UserMapper userMapper;
    @Override
    public User getInvokeUser(String accessKey) {
        if(accessKey == null){
            return null;
        }
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("accessKey",accessKey);
        return userMapper.selectOne(queryWrapper);
    }
}
