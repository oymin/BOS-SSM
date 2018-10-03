package cn.itcast.bos.quartz;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.bos.dao.PromotionMapper;

/**
 * 定时设置宣传任务 状态
 * @author koax
 */
public class PromotionJob implements Job {

	@Autowired
	private PromotionMapper promotionMapper;
	
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		// 每分钟执行一次，当前时间 大于promotion数据表endDate,活动已经过期，设置status='2'
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		promotionMapper.updateStatusQuartz(sdf.format(new Date()));
		
	}

}
