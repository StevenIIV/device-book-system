package com.eer_system.controller;

import com.eer_system.dao.LogMapper;
import com.eer_system.model.Log;
import com.eer_system.model.User;
import com.eer_system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.LoggingMXBean;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private LogMapper logMapper;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/login.do")
    public String loginFuntion(int id, String password, HttpSession httpSession){
        User user = userService.login(id, password);
        List<Log> list=logMapper.getDevcieLogByName(user.getId());
        List<List<Object>> rentlist=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            List<Object> l=new ArrayList<>();
            l.add(list.get(i).getDeviceName());
            l.add(list.get(i).getAppoDay());
            if(list.get(i).getAppoTime().equals("0")) l.add("上午");
            else l.add("下午");
            l.add(list.get(i).getUsePostion());
            l.add(list.get(i).getCreationDate());
            rentlist.add(l);
        }
        httpSession.setAttribute("rentlist",rentlist);
        httpSession.setAttribute("user",user);
        if(user!=null){
            if(user.getAuthority().equals("系统管理员"))
                return "redirect:/user/sys_firstpage";
            else if(user.getAuthority().equals("管理员"))
                return "redirect:/user/sys_firstpage";
            else
                return "redirect:/user/ord_firstpage";
        }
        else
            return "redirect:/user/loginerror";
    }

    @RequestMapping("/getall")
    public String getAll(HttpSession httpSession){
        List<User> list=userService.getAll();
        httpSession.setAttribute("userlist",list);
        return "redirect:/user/sys_alluser";
    }

    @RequestMapping("/updateuser")
    public String updateuser(User user){
        int tmp=userService.updatemessage(user);
        return "redirect:/user/getall";
    }

    @RequestMapping("/update")
    public String update(User user,HttpSession httpSession){
        int tmp=userService.updatemessage(user);
        User user1=(User) httpSession.getAttribute("user");
        if(user.getId().equals(user1.getId())){
            httpSession.setAttribute("user",user);
        }
        if(user1!=null){
            if(user1.getAuthority().equals("系统管理员"))
                return "redirect:/user/sys_person";
            else if(user1.getAuthority().equals("管理员"))
                return "redirect:/user/sys_person";
            else
                return "redirect:/user/ord_person";
        }
        else return "redirect:/user/loginerror";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        int tmp = userService.deleteuser(id);
        return "redirect:/user/getall";
    }

    @RequestMapping("/insert")
    public String insert(User user){
        int tmp=userService.insertuser(user);
        return "redirect:/user/getall";
    }

    @RequestMapping("/nor_person")
    public String nor_person(){
        return "nor_person";
    }

    @RequestMapping("/nor_firstpage")
    public String nor_firstpage(){
        return "nor_firstpage";
    }
    @RequestMapping("/modify")
    public String modify(HttpSession httpSession){
        User user=(User)httpSession.getAttribute("user");
        if(user.getAuthority().equals("普通用户"))
            return "ord_modifyuser";
        else
            return "modify";
    }

    @RequestMapping("/nor_modifyuser")
    public String nor_modifyuser(){
        return "nor_modifyuser";
    }
    @RequestMapping("/ord_person")
    public String ord_person(){
        return "ord_person";
    }

    @RequestMapping("/ord_firstpage")
    public String ord_firstpage(){
        return "ord_firstpage";
    }

    @RequestMapping("/ord_modifyuser")
    public String ord_modifyuser(){
        return "ord_modifyuser";
    }

    @RequestMapping("/sys_alluser")
    public String sys_alluser(){
        return "sys_alluser";
    }

    @RequestMapping("/sys_firstpage")
    public String sys_firstpage(HttpSession httpSession){
        List<Log> list=logMapper.getAllLog();
        Map<String,Integer> mp= new HashMap<>();
        ArrayList<String> listst=new ArrayList<>();
        List<Integer> listint=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            if(mp.get(list.get(i).getDeviceName())==null){
                mp.put(list.get(i).getDeviceName(),0);
                listst.add(list.get(i).getDeviceName());
            }
            int tmp=mp.get(list.get(i).getDeviceName());
            mp.put(list.get(i).getDeviceName(),tmp+1);
        }
        for(int i=0;i<listst.size();i++){
            listint.add(mp.get(listst.get(i)));
        }
        httpSession.setAttribute("zztname",listst);
        httpSession.setAttribute("zztnum",listint);
        return "sys_firstpage";
    }

    @RequestMapping("/sys_person")
    public String sys_person(HttpSession httpSession){
        User user=(User)httpSession.getAttribute("user");
        if(user.getAuthority().equals("普通用户"))
            return "ord_person";
        else
            return "sys_person";
    }

    @RequestMapping("/sys_updateuser")
    public String sys_updateuser(){
        return "sys_updateuser";
    }

    @RequestMapping("/sys_insert")
    public String sys_insert(){
        return "sys_insert";
    }

}
