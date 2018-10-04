package cn.itcast.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.bos.dao.PromotionMapper;
import cn.itcast.bos.pojo.Result;
import cn.itcast.bos.pojo.take_delivery.Promotion;
import cn.itcast.bos.pojo.take_delivery.PageBean;
import cn.itcast.bos.service.PromotionService;
import cn.itcast.bos.utils.PageUtil;

@Service
public class PromotionServiceImpl implements PromotionService {
	
	@Autowired
	private PromotionMapper promotionMapper;

	@Override
	public Result save(Promotion promotion) {
		promotionMapper.insertSelective(promotion);
		return Result.ok();
	}

	@Override
	public Integer findTotal(Promotion promotion) {
		return promotionMapper.findTotal(promotion);
	}

	@Override
	public List<Promotion> findPageData(Promotion promotion) {
		return promotionMapper.findPageData(promotion);
	}

	
	
	//----------------------cxf webservice-------------------
	@Override
	public PageBean<Promotion> findPageData(int page, int rows) {
		Promotion promotion = new Promotion();
		Integer total = promotionMapper.findTotal(promotion);
		PageUtil.setPage(page, rows, total);
		promotion.setBegin(PageUtil.getResult()[0]);
		promotion.setEnd(PageUtil.getResult()[1]);
		List<Promotion> list = promotionMapper.findPageData(promotion);
		
		return new PageBean<>(total, list);
	}

	@Override
	public Promotion findById(int id) {
		return promotionMapper.selectByPrimaryKey(id);
	}
	
	

}
