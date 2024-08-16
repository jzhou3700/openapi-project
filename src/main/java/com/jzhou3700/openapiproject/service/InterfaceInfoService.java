package com.jzhou3700.openapiproject.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.jzhou3700.openapicommon.model.entity.InterfaceInfo;

/**
* @author Mac Jay
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2024-05-10 08:56:33
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {
    public void validInterfaceInfo(InterfaceInfo interfaceInfo,boolean add);
//
//    boolean save(InterfaceInfo interfaceInfo);
}
