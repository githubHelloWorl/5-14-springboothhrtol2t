package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YouxiuxiaoyouqiangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YouxiuxiaoyouqiangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YouxiuxiaoyouqiangView;


/**
 * 优秀校友墙
 *
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
public interface YouxiuxiaoyouqiangService extends IService<YouxiuxiaoyouqiangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxiuxiaoyouqiangVO> selectListVO(Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
   	
   	YouxiuxiaoyouqiangVO selectVO(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
   	
   	List<YouxiuxiaoyouqiangView> selectListView(Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
   	
   	YouxiuxiaoyouqiangView selectView(@Param("ew") Wrapper<YouxiuxiaoyouqiangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxiuxiaoyouqiangEntity> wrapper);

   	

}

