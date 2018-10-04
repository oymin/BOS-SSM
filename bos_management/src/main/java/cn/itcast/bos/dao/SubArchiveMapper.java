package cn.itcast.bos.dao;

import cn.itcast.bos.pojo.SubArchive;
import cn.itcast.bos.pojo.SubArea;

public interface SubArchiveMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SubArchive record);

    int insertSelective(SubArchive record);

    SubArchive selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SubArchive record);

    int updateByPrimaryKey(SubArchive record);

	int findTotal(SubArea subarea);
}