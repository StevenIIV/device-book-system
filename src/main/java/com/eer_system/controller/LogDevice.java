package com.eer_system.controller;

import com.eer_system.dao.DeviceMapper;
import com.eer_system.dao.LogMapper;
import com.eer_system.dao.UserMapper;
import com.eer_system.model.Device;
import com.eer_system.model.Log;
import com.eer_system.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class LogDevice {
    @Resource
    private LogMapper logMapper;
    @Resource
    private DeviceMapper deviceMapper;
    @Resource
    private UserMapper userMapper;

    @RequestMapping("/deviceappointment")
    public String deviceappointment(HttpSession httpSession, HttpServletRequest request, HttpServletResponse response){
        int id=Integer.valueOf(request.getParameter("id"));
        Calendar calendar=Calendar.getInstance();
        List<Log> list=logMapper.getDevcieLog(id);
        for(int i=0;i<list.size();i++){
            Date d1=list.get(i).getAppoDay();
            Date d2=calendar.getTime();
            long days=(d1.getTime()-d2.getTime());
            days=days / (1000 * 60 * 60 * 24);
            if(days<0){
                list.get(i).setValid(1);
                logMapper.updateByPrimaryKey(list.get(i));
            }
        }
        httpSession.setAttribute("logtimelist",logMapper.getDevcieLog(id));
        httpSession.setAttribute("chosendevice",deviceMapper.selectByPrimaryKey(id));
        User user= (User) httpSession.getAttribute("user");
        if(user.getAuthority().equals("普通用户")){
            return "deviceappointment_user";
        }
        else return "deviceappointment";
    }

    @ResponseBody
    @RequestMapping(value = "/showdeviceapp",method = RequestMethod.POST)
    public List<Log> showdeviceapp(HttpSession httpSession){
        return (List<Log>) httpSession.getAttribute("logtimelist");
    }

    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping("/appointment")
    @ResponseBody
    public String appointment(HttpServletRequest request, HttpServletRequest response,HttpSession session){
        int d=Integer.valueOf(request.getParameter("d"));
        int day,time;
        if(d%2==0){
            day=d/2;time=1;
        }
        else {
            day=d/2+1;time=0;
        }
        Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DAY_OF_MONTH,+day);
        session.setAttribute("day",day);
        String date=String.valueOf(calendar.getTime()).substring(0,10);
        System.out.println(date);
        session.setAttribute("appodate",date);
        String appotime="";
        if(time==0) appotime="上午";
        else appotime="下午";
        session.setAttribute("appotime",appotime);
        return date+" "+appotime;
    }

    @RequestMapping("/appointmentconfirm.do")
    public String appointmentconfirm(HttpServletRequest request, HttpServletRequest response,HttpSession session){
        Device device= (Device) session.getAttribute("chosendevice");
        User user= (User) session.getAttribute("user");
        Log log=new Log();
        String postion=request.getParameter("postion");
        log.setUsePostion(postion);
        log.setDeviceId(device.getId());
        log.setDeviceName(device.getDeviceName());
        log.setUserid(user.getId());
        log.setUserName(user.getUsername());
        int day= (int) session.getAttribute("day");
        day--;
        String time= (String) session.getAttribute("appotime");
        Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DAY_OF_MONTH,+day);
        log.setAppoDay(calendar.getTime());
        if(time=="上午") log.setAppoTime("0");
        else log.setAppoTime("1");
        log.setValid(0);
        log.setCreationDate(new Date());
        int res=logMapper.insert(log);
        return "redirect:/deviceappointment?id="+request.getParameter("id");
    }

    @RequestMapping("/alllog")
    public String alllog(HttpSession httpSession){
        List<Log> list=logMapper.getAllLog();
        List<List<Object>> lists=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            List<Object> l=new ArrayList<>();
            l.add(list.get(i).getId());
            l.add(list.get(i).getDeviceName());
            l.add(list.get(i).getUserName());
            l.add(list.get(i).getUsePostion());
            l.add(list.get(i).getAppoDay());
            if(list.get(i).getAppoTime()=="1") l.add("上午");
            else l.add("下午");
            l.add(list.get(i).getCreationDate());
            lists.add(l);
        }
        httpSession.setAttribute("loglist",lists);
        return "alllog";
    }

    @RequestMapping("/bar")
    public String bar(){
        return "Bar";
    }
}
