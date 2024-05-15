package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YouxiuxiaoyouqiangEntity;
import com.entity.view.YouxiuxiaoyouqiangView;

import com.service.YouxiuxiaoyouqiangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 优秀校友墙
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
@RestController
@RequestMapping("/youxiuxiaoyouqiang")
public class YouxiuxiaoyouqiangController {
    @Autowired
    private YouxiuxiaoyouqiangService youxiuxiaoyouqiangService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang,
		HttpServletRequest request){
        EntityWrapper<YouxiuxiaoyouqiangEntity> ew = new EntityWrapper<YouxiuxiaoyouqiangEntity>();

		PageUtils page = youxiuxiaoyouqiangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiuxiaoyouqiang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang, 
		HttpServletRequest request){
        EntityWrapper<YouxiuxiaoyouqiangEntity> ew = new EntityWrapper<YouxiuxiaoyouqiangEntity>();

		PageUtils page = youxiuxiaoyouqiangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxiuxiaoyouqiang), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang){
       	EntityWrapper<YouxiuxiaoyouqiangEntity> ew = new EntityWrapper<YouxiuxiaoyouqiangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( youxiuxiaoyouqiang, "youxiuxiaoyouqiang")); 
        return R.ok().put("data", youxiuxiaoyouqiangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang){
        EntityWrapper< YouxiuxiaoyouqiangEntity> ew = new EntityWrapper< YouxiuxiaoyouqiangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( youxiuxiaoyouqiang, "youxiuxiaoyouqiang")); 
		YouxiuxiaoyouqiangView youxiuxiaoyouqiangView =  youxiuxiaoyouqiangService.selectView(ew);
		return R.ok("查询优秀校友墙成功").put("data", youxiuxiaoyouqiangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang = youxiuxiaoyouqiangService.selectById(id);
        return R.ok().put("data", youxiuxiaoyouqiang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang = youxiuxiaoyouqiangService.selectById(id);
        return R.ok().put("data", youxiuxiaoyouqiang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(youxiuxiaoyouqiang);
        youxiuxiaoyouqiangService.insert(youxiuxiaoyouqiang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(youxiuxiaoyouqiang);
        youxiuxiaoyouqiangService.insert(youxiuxiaoyouqiang);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YouxiuxiaoyouqiangEntity youxiuxiaoyouqiang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(youxiuxiaoyouqiang);
        youxiuxiaoyouqiangService.updateById(youxiuxiaoyouqiang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        youxiuxiaoyouqiangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
