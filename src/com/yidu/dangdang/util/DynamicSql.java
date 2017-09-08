package com.yidu.dangdang.util;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 本类用于多态生成sql语句并为其赋值
 * @author Iversen
 * @since 2017/3/18
 */
public class DynamicSql {
	
	/*
	 * 本类有设置参数的方法 把传入的参数添加进入集合
	 * 
	 * 设置值的方法 把传入的值添加进入集合
	 * 
	 * 把非空的值放进Map中并多态生成sql语句
	 * 
	 * 遍历Map中的键和值为参数赋值的方法
	 */
	
	/**
	 * 参数集合
	 */
	List<String> param = new ArrayList<String>();
	
	/**
	 * 参数对应值的集合
	 */
	List<Object> value = new ArrayList<Object>();
	
	/**
	 * 键和值的Map集合
	 */
	Map<String,Object> validParamAndValue = new HashMap<String,Object>();
	
	/**
	 * 键的集合
	 */
	Set<String> keySet = null;
	
	
	/**
	 * 添加参数的方法
	 */
	public void addParam(String params){
		param.add(params);
	}
	
	
	/**
	 * 设置值的方法
	 */
	public void setValue(Object values){
		value.add(values);
	}
	
	
	/**
	 * 添加有效参数和值的方法
	 */
	public void addValidParamAndValue(){
		
		/*
		 * 遍历值的集合判断是否有效
		 */
		int i=0;
		for (Object obs : value) {
			//强转为String验证是否有效
			Object temp = obs;
			if(!("".equals(temp))&&temp!=null){
				//如果有效把对应的列名和值添加进Map
				validParamAndValue.put(param.get(i), obs);
			}
			i++;
		}
		
		
	}
	
	
	/**
	 * 动态生成SQL语句
	 * @return 动态生成的SQL语句
	 */
	public String createGeneralSql(){
		
        StringBuffer sql = new StringBuffer();		
		//添加开始的语句
        sql.append("where 1=1 ");
        //遍历Map集合动态拼接字符串
        //获得键的集合
        keySet = validParamAndValue.keySet();
        //遍历键的集合生成sql语句
        for (String key : keySet) {
			sql.append("and ");
			if (key.equals("categoryName")) {
				sql.append(key+" like ? ");
			}else if(key.equals("age1")){
			    sql.append("userAge"+" >= ? ");
			}else if(key.equals("price1")){
				sql.append("price"+" >= ? ");
			}else if(key.equals("price2")){
				sql.append("price"+" <=? ");
			}else if (key.equals("age2")) {
				sql.append("userAge"+" <= ? ");
			}else if(key.equals("describe")){
				sql.append("`describe` like ? ");
			}else if (key.split(";")[1].equals("like")) {
				sql.append(key.split(";")[0]+" like ? ");
			} else if(key.split(";")[1].equals("scope1")) {
				sql.append(key.split(";")[0]+" >= ? ");
			}else if(key.split(";")[1].equals("scope2")){
				sql.append(key.split(";")[0]+" <= ? ");
			}else if(key.split(";")[1].equals("normal")){
				sql.append(key.split(";")[0]+" = ? ");
			}else{
				sql.append(key+" = ? ");
			}
		}
		return sql.toString();
	}
	
	
	/**
	 * 动态设置参数的方法
	 * @param psta 预处理语句对象
	 */
	public void setParam(PreparedStatement psta){
		
		
		int i=1;
		//遍历Map集合设置参数
		for (String key : keySet) {
			
			try {
				if (key.equals("categoryName")||key.equals("describe")||key.split(";")[1].equals("like")) {
                    psta.setString(i, "%"+(String) validParamAndValue.get(key)+"%");					
				} else {
					psta.setObject(i, validParamAndValue.get(key));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				i++;
			}
			
			
			
			
		}
		
		
		
	}
	
	
	
	

}
