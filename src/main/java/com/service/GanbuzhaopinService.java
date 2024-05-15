package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GanbuzhaopinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GanbuzhaopinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GanbuzhaopinView;


/**
 * 社团招聘
 *
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
public interface GanbuzhaopinService extends IService<GanbuzhaopinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GanbuzhaopinVO> selectListVO(Wrapper<GanbuzhaopinEntity> wrapper);
   	
   	GanbuzhaopinVO selectVO(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);
   	
   	List<GanbuzhaopinView> selectListView(Wrapper<GanbuzhaopinEntity> wrapper);
   	
   	GanbuzhaopinView selectView(@Param("ew") Wrapper<GanbuzhaopinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GanbuzhaopinEntity> wrapper);

   	

}

