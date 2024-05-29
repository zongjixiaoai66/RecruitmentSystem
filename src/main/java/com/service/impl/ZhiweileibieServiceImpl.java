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


import com.dao.ZhiweileibieDao;
import com.entity.ZhiweileibieEntity;
import com.service.ZhiweileibieService;
import com.entity.vo.ZhiweileibieVO;
import com.entity.view.ZhiweileibieView;

@Service("zhiweileibieService")
public class ZhiweileibieServiceImpl extends ServiceImpl<ZhiweileibieDao, ZhiweileibieEntity> implements ZhiweileibieService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhiweileibieEntity> page = this.selectPage(
                new Query<ZhiweileibieEntity>(params).getPage(),
                new EntityWrapper<ZhiweileibieEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhiweileibieEntity> wrapper) {
		  Page<ZhiweileibieView> page =new Query<ZhiweileibieView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhiweileibieVO> selectListVO(Wrapper<ZhiweileibieEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhiweileibieVO selectVO(Wrapper<ZhiweileibieEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhiweileibieView> selectListView(Wrapper<ZhiweileibieEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhiweileibieView selectView(Wrapper<ZhiweileibieEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
