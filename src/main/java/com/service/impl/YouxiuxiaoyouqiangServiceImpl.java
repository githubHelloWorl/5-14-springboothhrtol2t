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


import com.dao.YouxiuxiaoyouqiangDao;
import com.entity.YouxiuxiaoyouqiangEntity;
import com.service.YouxiuxiaoyouqiangService;
import com.entity.vo.YouxiuxiaoyouqiangVO;
import com.entity.view.YouxiuxiaoyouqiangView;

@Service("youxiuxiaoyouqiangService")
public class YouxiuxiaoyouqiangServiceImpl extends ServiceImpl<YouxiuxiaoyouqiangDao, YouxiuxiaoyouqiangEntity> implements YouxiuxiaoyouqiangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxiuxiaoyouqiangEntity> page = this.selectPage(
                new Query<YouxiuxiaoyouqiangEntity>(params).getPage(),
                new EntityWrapper<YouxiuxiaoyouqiangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxiuxiaoyouqiangEntity> wrapper) {
		  Page<YouxiuxiaoyouqiangView> page =new Query<YouxiuxiaoyouqiangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<YouxiuxiaoyouqiangVO> selectListVO(Wrapper<YouxiuxiaoyouqiangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YouxiuxiaoyouqiangVO selectVO(Wrapper<YouxiuxiaoyouqiangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YouxiuxiaoyouqiangView> selectListView(Wrapper<YouxiuxiaoyouqiangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxiuxiaoyouqiangView selectView(Wrapper<YouxiuxiaoyouqiangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
