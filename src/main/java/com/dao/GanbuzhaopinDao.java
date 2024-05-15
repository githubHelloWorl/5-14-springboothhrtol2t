package com.dao;

import com.entity.GanbuzhaopinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GanbuzhaopinVO;
import com.entity.view.GanbuzhaopinView;


/**
 * 社团招聘
 * 
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
public interface GanbuzhaopinDao extends BaseMapper<GanbuzhaopinEntity> {
	
	List<GanbuzhaopinVO> selectListVO(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);
	
	GanbuzhaopinVO selectVO(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);
	
	List<GanbuzhaopinView> selectListView(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);

	List<GanbuzhaopinView> selectListView(Pagination page,@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);

	
	GanbuzhaopinView selectView(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);
	

}
