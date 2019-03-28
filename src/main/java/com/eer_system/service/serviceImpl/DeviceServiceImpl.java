package com.eer_system.service.serviceImpl;

import com.eer_system.dao.DeviceMapper;
import com.eer_system.model.Device;
import com.eer_system.model.Device1;
import com.eer_system.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DeviceServiceImpl implements DeviceService {
    @Autowired
    private DeviceMapper deviceMapper;
    @Override
    public List<Device1> getAllDevices() throws Exception {
        List<Device> list=deviceMapper.getAllDevice();
        List<Device1> devicelist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            Device device=list.get(i);
            Device1 device1=new Device1();
            device1.setId(device.getId());
            device1.setDeviceName(device.getDeviceName());
            device1.setDeviceType(device.getDeviceType());
            device1.setDeviceBrand(device.getDeviceBrand());
            device1.setPostion(device.getPostion());
            if(device.getStatus()==0) device1.setStatus("可用");else device1.setStatus("停用");
            device1.setAdminid(device.getAdminid());
            devicelist.add(device1);
        }
        return devicelist;
    }
}
