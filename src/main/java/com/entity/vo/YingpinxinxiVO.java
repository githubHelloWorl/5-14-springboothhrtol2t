package com.entity.vo;

import com.entity.YingpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 应聘信息
 * @author 
 * @email 
 * @date 2024-03-22 09:30:05
 */
public class YingpinxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 招聘封面
	 */
	
	private String zhaopinfengmian;
		
	/**
	 * 工作地点
	 */
	
	private String gongzuodidian;
		
	/**
	 * 工作时间
	 */
	
	private String gongzuoshijian;
		
	/**
	 * 应聘时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date yingpinshijian;
		
	/**
	 * 简历
	 */
	
	private String jianli;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 用户姓名
	 */
	
	private String yonghuxingming;
				
	
	/**
	 * 设置：招聘封面
	 */
	 
	public void setZhaopinfengmian(String zhaopinfengmian) {
		this.zhaopinfengmian = zhaopinfengmian;
	}
	
	/**
	 * 获取：招聘封面
	 */
	public String getZhaopinfengmian() {
		return zhaopinfengmian;
	}
				
	
	/**
	 * 设置：工作地点
	 */
	 
	public void setGongzuodidian(String gongzuodidian) {
		this.gongzuodidian = gongzuodidian;
	}
	
	/**
	 * 获取：工作地点
	 */
	public String getGongzuodidian() {
		return gongzuodidian;
	}
				
	
	/**
	 * 设置：工作时间
	 */
	 
	public void setGongzuoshijian(String gongzuoshijian) {
		this.gongzuoshijian = gongzuoshijian;
	}
	
	/**
	 * 获取：工作时间
	 */
	public String getGongzuoshijian() {
		return gongzuoshijian;
	}
				
	
	/**
	 * 设置：应聘时间
	 */
	 
	public void setYingpinshijian(Date yingpinshijian) {
		this.yingpinshijian = yingpinshijian;
	}
	
	/**
	 * 获取：应聘时间
	 */
	public Date getYingpinshijian() {
		return yingpinshijian;
	}
				
	
	/**
	 * 设置：简历
	 */
	 
	public void setJianli(String jianli) {
		this.jianli = jianli;
	}
	
	/**
	 * 获取：简历
	 */
	public String getJianli() {
		return jianli;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
				
	
	/**
	 * 设置：用户账号
	 */
	 
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
				
	
	/**
	 * 设置：用户姓名
	 */
	 
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
			
}
