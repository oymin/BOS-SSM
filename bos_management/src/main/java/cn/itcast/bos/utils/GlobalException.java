package cn.itcast.bos.utils;

/**
 * 自定义异常
 * 
 */
public class GlobalException extends Exception {

	private static final long serialVersionUID = 1L;

	private String msg;
	private int status = 500;

	public GlobalException(String msg) {
			super(msg);
			this.msg = msg;
		}

	public GlobalException(String msg, Throwable e) {
			super(msg, e);
			this.msg = msg;
		}

	public GlobalException(String msg, int status) {
			super(msg);
			this.msg = msg;
			this.status = status;
		}

	public GlobalException(String msg, int status, Throwable e) {
			super(msg, e);
			this.msg = msg;
			this.status = status;
		}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getstatus() {
		return status;
	}

	public void setstatus(int status) {
		this.status = status;
	}

}
