package com.eer_system.controller;

import com.eer_system.dao.DeviceMapper;
import com.eer_system.model.Device;
import com.eer_system.model.Device1;
import com.eer_system.model.User;
import com.eer_system.service.DeviceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class DeviceController {
    @Resource
    private DeviceService deviceService;
    @Resource
    private DeviceMapper deviceMapper;

    @RequestMapping("/showalldevice_adm")
    public String showalldevice_adm(HttpSession httpSession) throws Exception {
        httpSession.setAttribute("page",1);
        User user= (User) httpSession.getAttribute("user");
        List<Device1> devicelist=deviceService.getAllDevices();
        httpSession.setAttribute("devicelist",devicelist);
        return "showalldevice_adm";
    }

    @RequestMapping("/showalldevice_user")
    public String showalldevice_user(HttpSession httpSession) throws Exception {
        User user= (User) httpSession.getAttribute("user");
        List<Device1> devicelist=deviceService.getAllDevices();
        httpSession.setAttribute("devicelist",devicelist);
        return "showalldevice_user";
    }

    @RequestMapping("/insertdevice")
    public String insertdevice(){
        return "insertdevice";
    }

    @RequestMapping("/insertdevice.do")
    public void insertDeviceFunction(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        Device device=new Device();
        device.setDeviceName(request.getParameter("devicename"));
        device.setDeviceType(request.getParameter("devicetype"));
        device.setDeviceBrand(request.getParameter("devicebrand"));
        device.setPostion(request.getParameter("devicepostion"));
        device.setAdminid(Integer.valueOf(request.getParameter("adminid")));
        device.setStatus(0);
        System.out.println(device.getDeviceName());
        int res=deviceMapper.insert(device);
        if(res==-1){
            out.print("<script language='javascript'>alert('error!');window.location.href='/insertdevice';</script>");
        }
        else{
            out.print("<script language='javascript'>alert('insert success');window.location.href='/insertdevice';</script>");
        }
    }

    @RequestMapping("/modifydevice")
    public String modifyDevicePage(HttpServletRequest request,HttpSession httpSession){
        httpSession.setAttribute("devicetomodify",deviceMapper.selectByPrimaryKey(Integer.valueOf(request.getParameter("id"))));
        return "modifydevice";
    }

    @RequestMapping("/modifydevice.do")
    public void modifyDeviceFunction(HttpServletRequest request, HttpServletResponse response) throws Exception{
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        int id=Integer.parseInt(request.getParameter("deviceid"));
        Device device=deviceMapper.selectByPrimaryKey(id);
        device.setDeviceName(request.getParameter("devicename"));
        device.setDeviceType(request.getParameter("devicetype"));
        device.setDeviceBrand(request.getParameter("devicebrand"));
        device.setPostion(request.getParameter("devicepostion"));
        device.setAdminid(Integer.valueOf(request.getParameter("adminid")));
        int res=deviceMapper.updateByPrimaryKey(device);
        if(res==-1){
            out.print("<script language='javascript'>alert('error!');window.location.href='/modifydevice?id="+id+"';</script>");
        }
        else{
            out.print("<script language='javascript'>alert('modify success!');window.location.href='/showalldevice_adm';</script>");
        }
    }

    @RequestMapping("/changestatus.do")
    public void changeStatusFunction(HttpServletRequest request,HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        int id=Integer.valueOf(request.getParameter("id"));
        Device device=deviceMapper.selectByPrimaryKey(id);
        if(device.getStatus()==1) device.setStatus(0);
        else device.setStatus(1);
        int res=deviceMapper.updateByPrimaryKey(device);
        if(res==-1){
            out.print("<script language='javascript'>alert('error!');window.location.href='/showalldevice_adm';</script>");
        }
        else{
            out.print("<script language='javascript'>window.location.href='/showalldevice_adm';</script>");
        }
    }

    @RequestMapping("/maincontent")
    public String maincontent(){
        return "maincontent";
    }
}
