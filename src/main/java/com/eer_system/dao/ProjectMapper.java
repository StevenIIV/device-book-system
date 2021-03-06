package com.eer_system.dao;

import com.eer_system.model.Project;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProjectMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table project
     *
     * @mbggenerated
     */
    int insert(Project record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table project
     *
     * @mbggenerated
     */
    int insertSelective(Project record);

    int updateByPrimaryKeySelective(Project record);

    int deleteByPrimaryKey(int id);

    @Select("select * from project")
    List<Project> getall();
}