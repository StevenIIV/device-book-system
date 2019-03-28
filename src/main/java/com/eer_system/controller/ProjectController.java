package com.eer_system.controller;

import com.eer_system.model.Project;
import com.eer_system.model.User;
import com.eer_system.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {
    @Autowired
    private ProjectService projectService;
    @RequestMapping("/getall")
    public String getall(HttpSession httpSession){
        List<Project> list=projectService.getall();
        httpSession.setAttribute("projectlist",list);
        return "redirect:/project/allproject";
    }
    @RequestMapping("/insert")
    public String insert(Project project){
        projectService.insertproject(project);
        return "redirect:/project/getall";
    }
    @RequestMapping("/update")
    public String update(Project project){
        projectService.updateproject(project);
        return "redirect:/project/getall";
    }
    @RequestMapping("/delete")
    public String delete(int id){
        projectService.deleteproject(id);
        return "redirect:/project/getall";
    }
    @RequestMapping("/projectmodify_user")
    public String projectmodify_user(){
        return "projectmodify_user";
    }
    @RequestMapping("/projectinsert_user")
    public String projectinsert_user(){
        return "projectinsert_user";
    }
    @RequestMapping("/projectinsert")
    public String projectinsert(){
        return "projectinsert";
    }
    @RequestMapping("/projectcon")
    public String projectcon(){
        return "projectcon";
    }
    @RequestMapping("/allproject")
    public String allproject(HttpSession httpSession){
        User user= (User) httpSession.getAttribute("user");
        if(user.getAuthority().equals("普通用户")){
            return "allproject_user";
        }
        else return "allproject";
    }
    @RequestMapping("/projectmodify")
    public String projectmodify(){
        return "projectmodify";
    }
    @RequestMapping("/allproject_user")
    public String allproject_user(){
        return "allproject_user";
    }
}
