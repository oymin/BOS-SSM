package cn.itcast.bos.pojo;

import java.io.Serializable;
import java.util.List;

/**
 * EasyUI返回结果对象
 * @author koax
 *
 */
public class EasyUIDataGridResult implements Serializable {
	private static final long serialVersionUID = 5835666890950375843L;

	private long total; //数据总数
	private List<?> rows; //数据

	public EasyUIDataGridResult(long total, List<?> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

}
