package com.entity.view;

import com.entity.ZhiweileibieEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 职位类别
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-05 13:19:35
 */
@TableName("zhiweileibie")
public class ZhiweileibieView  extends ZhiweileibieEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhiweileibieView(){
	}
 
 	public ZhiweileibieView(ZhiweileibieEntity zhiweileibieEntity){
 	try {
			BeanUtils.copyProperties(this, zhiweileibieEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
