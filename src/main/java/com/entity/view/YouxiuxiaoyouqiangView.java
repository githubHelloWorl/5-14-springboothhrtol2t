package com.entity.view;

import com.entity.YouxiuxiaoyouqiangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 优秀校友墙
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-03-22 09:30:04
 */
@TableName("youxiuxiaoyouqiang")
public class YouxiuxiaoyouqiangView  extends YouxiuxiaoyouqiangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YouxiuxiaoyouqiangView(){
	}
 
 	public YouxiuxiaoyouqiangView(YouxiuxiaoyouqiangEntity youxiuxiaoyouqiangEntity){
 	try {
			BeanUtils.copyProperties(this, youxiuxiaoyouqiangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
