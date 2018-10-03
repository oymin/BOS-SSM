package cn.itcast.bos.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class MailUtils {
	private static String smtp_host = "smtp.163.com"; 
	private static String username = "oymtofight@163.com"; //邮箱账号
	private static String password = "oymtofight163"; //邮箱客户端授权码
	private static String from = "oymtofight@163.com"; 
	public static String activeUrl = "http://localhost:9003/customer_activeMail.action"; //激活邮件地址

	public static void sendMail(String subject, String content, String to) {
		Properties props = new Properties();
		props.setProperty("mail.smtp.host", smtp_host);
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(props);
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(from));
			message.setRecipient(RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			message.setContent(content, "text/html;charset=utf-8");
			/*message.setContent("<h3>请点击地址激活:<a href=" + activeUrl
					+ "?activecode=" + activecode + ">" + "点击这里绑定邮箱"
					+ "</a></h3>", "text/html;charset=utf-8");
			message.saveChanges();*/
			Transport transport = session.getTransport();
			transport.connect(smtp_host, username, password);
			transport.sendMessage(message, message.getAllRecipients());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("邮件发送失败...");
		}
	}

	public static void main(String[] args) {
		sendMail("激活码", "你好,这公司收到附件是的开发技术对接发生的纠纷", "302660844@qq.com");
	}
}
