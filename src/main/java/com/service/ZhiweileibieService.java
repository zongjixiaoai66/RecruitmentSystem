package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhiweileibieEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhiweileibieVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhiweileibieView;


/**
 * 职位类别
 *
 * @author 
 * @email 
 * @date 2021-03-05 13:19:35
 */
public interface ZhiweileibieService extends IService<ZhiweileibieEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhiweileibieVO> selectListVO(Wrapper<ZhiweileibieEntity> wrapper);
   	
   	ZhiweileibieVO selectVO(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
   	
   	List<ZhiweileibieView> selectListView(Wrapper<ZhiweileibieEntity> wrapper);
   	
   	ZhiweileibieView selectView(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhiweileibieEntity> wrapper);
   	
}

