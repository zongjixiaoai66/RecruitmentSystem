package com.dao;

import com.entity.ZhiweileibieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhiweileibieVO;
import com.entity.view.ZhiweileibieView;


/**
 * 职位类别
 * 
 * @author 
 * @email 
 * @date 2021-03-05 13:19:35
 */
public interface ZhiweileibieDao extends BaseMapper<ZhiweileibieEntity> {
	
	List<ZhiweileibieVO> selectListVO(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
	
	ZhiweileibieVO selectVO(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
	
	List<ZhiweileibieView> selectListView(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);

	List<ZhiweileibieView> selectListView(Pagination page,@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
	
	ZhiweileibieView selectView(@Param("ew") Wrapper<ZhiweileibieEntity> wrapper);
	
}
