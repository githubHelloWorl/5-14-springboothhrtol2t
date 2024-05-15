package com.dao;

import com.entity.YouxiuxiaoyouqiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YouxiuxiaoyouqiangVO;
import com.entity.view.YouxiuxiaoyouqiangView;


/**
 * 优秀校友墙
 * 
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
public interface YouxiuxiaoyouqiangDao extends BaseMapper<YouxiuxiaoyouqiangEntity> {
	
	List<YouxiuxiaoyouqiangVO> selectListVO(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
	
	YouxiuxiaoyouqiangVO selectVO(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
	
	List<YouxiuxiaoyouqiangView> selectListView(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);

	List<YouxiuxiaoyouqiangView> selectListView(Pagination page,@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);

	
	YouxiuxiaoyouqiangView selectView(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
	

}
