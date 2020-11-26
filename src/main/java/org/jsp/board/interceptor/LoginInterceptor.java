package org.jsp.board.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * ����� �α��� Ȯ�� ���ͼ���. HandlerInterceptorAdapter�� ��ӹ޾Ƽ� ����.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	//��Ʈ�ѷ��� �޼��� ���� ���� ó��
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.debug("LoginInterceptor ����");
		
		//������ �α��� ���� �б�
		HttpSession session = request.getSession();
		String loginid = (String) session.getAttribute("loginid");
		
		//�α��ε��� ���� ��� �α��� �������� �̵�
		if (loginid == null) {
			//request.getContextPath()�� ��Ʈ ��θ� ���Ͽ� ���� ��η� ó��
			response.sendRedirect(request.getContextPath() + "/gologinform");
			return false;
		}
		
		//�α��� �� ��� ��û�� ��η� ����
		return super.preHandle(request, response, handler);
	}

}
