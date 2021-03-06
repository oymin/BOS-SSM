package cn.itcast.bos.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.TransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;

/**
 * 用来创建，关闭Eleasticsearch客户端
 * 
 * @author koax
 */
public class ESUtils {

	private static TransportClient client;

	public synchronized static Client getClient() {
		Settings settings = Settings.builder().put("client.transport.sniff", true).build();
		// 自动嗅探其他集群的ip 如果有则加入
		TransportAddress master = null;
		try {
			master = new TransportAddress(InetAddress.getByName("127.0.0.1"), 9300);
			client = new PreBuiltTransportClient(settings).addTransportAddress(master);
			return client;
		} catch (UnknownHostException e) {
			e.printStackTrace();
			throw new RuntimeException("elasticSearch Client init error 连接创建失败" + e);
		}
	}

	/** * 用于关闭elasticSearch */
	public static void closeClient(Client client) {
		if (null != client) {
			try {
				client.close();
			} catch (Exception e) {
				throw new RuntimeException("连接关闭失败");
			}
		}
	}

}
