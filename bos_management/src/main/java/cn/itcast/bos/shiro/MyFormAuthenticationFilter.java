package cn.itcast.bos.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

/**
 * 设置认证成功跳转的Url
 * @author koax
 *
 */
public class MyFormAuthenticationFilter extends FormAuthenticationFilter {
	
	//制定session跳转url
	private final String successUrl = "index";
	
	/*@Override
	protected void issueSuccessRedirect(ServletRequest request, ServletResponse response) throws Exception {
		WebUtils.issueRedirect(request, response, successUrl, null, true);
	}*/

	@Override
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,
			ServletResponse response) throws Exception {
		WebUtils.issueRedirect(request, response, successUrl);
		return false;
	}
	
}
