package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.GanbuzhaopinDao;
import com.entity.GanbuzhaopinEntity;
import com.service.GanbuzhaopinService;
import com.entity.vo.GanbuzhaopinVO;
import com.entity.view.GanbuzhaopinView;

@Service("ganbuzhaopinService")
public class GanbuzhaopinServiceImpl extends ServiceImpl<GanbuzhaopinDao, GanbuzhaopinEntity> implements GanbuzhaopinService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GanbuzhaopinEntity> page = this.selectPage(
                new Query<GanbuzhaopinEntity>(params).getPage(),
                new EntityWrapper<GanbuzhaopinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GanbuzhaopinEntity> wrapper) {
		  Page<GanbuzhaopinView> page =new Query<GanbuzhaopinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<GanbuzhaopinVO> selectListVO(Wrapper<GanbuzhaopinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GanbuzhaopinVO selectVO(Wrapper<GanbuzhaopinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GanbuzhaopinView> selectListView(Wrapper<GanbuzhaopinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GanbuzhaopinView selectView(Wrapper<GanbuzhaopinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
