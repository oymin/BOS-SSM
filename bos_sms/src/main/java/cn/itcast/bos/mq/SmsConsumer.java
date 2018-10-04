package cn.itcast.bos.mq;

import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;

import org.springframework.stereotype.Service;

import cn.itcast.bos.utils.AliMessageUtils;

@Service("smsConsumer")
public class SmsConsumer implements MessageListener {

	@Override
	public void onMessage(Message message) {
		MapMessage map = (MapMessage)message;
		//调用SMS服务器发送短信
		try {
			//String status = AliMessageUtils.sendSmsByHTTP(map.getString("telephone"), map.getString("msg"));
			String status = "OK";
			if(status.equals("OK")) {
				System.out.println(map.getString("telephone"));
				System.out.println(map.getString("msg"));
			}else {
				throw new RuntimeException("短信发送失败！");
			}
		} catch (Exception e) {
			throw new RuntimeException("短信验证失败！");
		}
	}

}
