package com.eer_system.service;

import com.eer_system.model.Project;

import java.util.List;

public interface ProjectService {

    List<Project> getall();
    int insertproject(Project project);
    int deleteproject(int id);
    int updateproject(Project project);
}
