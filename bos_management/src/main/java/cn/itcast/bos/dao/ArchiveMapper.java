package cn.itcast.bos.dao;

import cn.itcast.bos.pojo.Archive;

public interface ArchiveMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Archive record);

    int insertSelective(Archive record);

    Archive selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Archive record);

    int updateByPrimaryKey(Archive record);
}