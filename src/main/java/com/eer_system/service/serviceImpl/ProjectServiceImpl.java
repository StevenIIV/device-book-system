package com.eer_system.service.serviceImpl;

import com.eer_system.dao.ProjectMapper;
import com.eer_system.model.Project;
import com.eer_system.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectMapper projectMapper;
    @Override
    public List<Project> getall() {
        return projectMapper.getall();
    }

    @Override
    public int insertproject(Project project) {
        return projectMapper.insertSelective(project);
    }

    @Override
    public int deleteproject(int id) {
        return projectMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateproject(Project project) {
        return projectMapper.updateByPrimaryKeySelective(project);
    }
}
