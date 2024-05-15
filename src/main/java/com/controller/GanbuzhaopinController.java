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

import com.entity.GanbuzhaopinEntity;
import com.entity.view.GanbuzhaopinView;

import com.service.GanbuzhaopinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 社团招聘
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
@RestController
@RequestMapping("/ganbuzhaopin")
public class GanbuzhaopinController {
    @Autowired
    private GanbuzhaopinService ganbuzhaopinService;

    @Autowired
    private StoreupService storeupService;



    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,GanbuzhaopinEntity ganbuzhaopin,
		HttpServletRequest request){
        EntityWrapper<GanbuzhaopinEntity> ew = new EntityWrapper<GanbuzhaopinEntity>();

		PageUtils page = ganbuzhaopinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, ganbuzhaopin), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,GanbuzhaopinEntity ganbuzhaopin, 
		HttpServletRequest request){
        EntityWrapper<GanbuzhaopinEntity> ew = new EntityWrapper<GanbuzhaopinEntity>();

		PageUtils page = ganbuzhaopinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, ganbuzhaopin), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( GanbuzhaopinEntity ganbuzhaopin){
       	EntityWrapper<GanbuzhaopinEntity> ew = new EntityWrapper<GanbuzhaopinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( ganbuzhaopin, "ganbuzhaopin")); 
        return R.ok().put("data", ganbuzhaopinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(GanbuzhaopinEntity ganbuzhaopin){
        EntityWrapper< GanbuzhaopinEntity> ew = new EntityWrapper< GanbuzhaopinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( ganbuzhaopin, "ganbuzhaopin")); 
		GanbuzhaopinView ganbuzhaopinView =  ganbuzhaopinService.selectView(ew);
		return R.ok("查询社团招聘成功").put("data", ganbuzhaopinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        GanbuzhaopinEntity ganbuzhaopin = ganbuzhaopinService.selectById(id);
		ganbuzhaopin.setClicknum(ganbuzhaopin.getClicknum()+1);
		ganbuzhaopin.setClicktime(new Date());
		ganbuzhaopinService.updateById(ganbuzhaopin);
        ganbuzhaopin = ganbuzhaopinService.selectView(new EntityWrapper<GanbuzhaopinEntity>().eq("id", id));
        return R.ok().put("data", ganbuzhaopin);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        GanbuzhaopinEntity ganbuzhaopin = ganbuzhaopinService.selectById(id);
		ganbuzhaopin.setClicknum(ganbuzhaopin.getClicknum()+1);
		ganbuzhaopin.setClicktime(new Date());
		ganbuzhaopinService.updateById(ganbuzhaopin);
        ganbuzhaopin = ganbuzhaopinService.selectView(new EntityWrapper<GanbuzhaopinEntity>().eq("id", id));
        return R.ok().put("data", ganbuzhaopin);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody GanbuzhaopinEntity ganbuzhaopin, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(ganbuzhaopin);
        ganbuzhaopinService.insert(ganbuzhaopin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody GanbuzhaopinEntity ganbuzhaopin, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(ganbuzhaopin);
        ganbuzhaopinService.insert(ganbuzhaopin);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody GanbuzhaopinEntity ganbuzhaopin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(ganbuzhaopin);
        ganbuzhaopinService.updateById(ganbuzhaopin);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        ganbuzhaopinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,GanbuzhaopinEntity ganbuzhaopin, HttpServletRequest request,String pre){
        EntityWrapper<GanbuzhaopinEntity> ew = new EntityWrapper<GanbuzhaopinEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = ganbuzhaopinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, ganbuzhaopin), params), params));
        return R.ok().put("data", page);
    }










}