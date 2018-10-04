package cn.itcast.bos.utils;

public class PageUtil {

	// 表数据的总条数
	private static Integer total;
	// 总页数
	private static Integer totalPage;
	// 每页的显示数
	private static Integer rows;
	// 起始数
	private static Integer begin;
	// 终止数
	private static Integer end;
	// 当前页数
	private static Integer page;

	public static void setPage(Integer currenPage, Integer rowsNum, Integer totalNum) {
		page = currenPage;
		rows = rowsNum;
		total = totalNum;
		// 计算起始数
		if (page == null)
			page = 1;
		if (page == 1) {
			begin = 0;
		} else {
			begin = (page - 1) * rows;
		}
		//计算终止数
		end = begin + rows;

		if (total != null && rows != null) {
			totalPage = total / rows;
			if (total % rows != 0) {
				totalPage = totalPage + 1;
			}

		}

	}
	
	
	/**
	 * 获取总页数
	 */
	/*public static Integer pagingToPages(Integer count, Integer currentSize) {
		int pages = count / currentSize;
		if (count % currentSize != 0) {
			pages = pages + 1;
		}

		return pages;
	}*/

	public static int getTotolCount() {
		return total;
	}

	// 获得结果集
	public static int[] getResult() {
		int[] nums = { begin, end, totalPage };
		return nums;

	}

	public static void main(String[] args) {
		//测试
		/*PageUtil pageUtil = new PageUtil();
		pageUtil.setPage(3, 10, 500);*/
		
		/*System.out.println(pageUtil.getReqult()[0]);
		System.out.println(pageUtil.getReqult()[1]);
		System.out.println(pageUtil.getReqult()[2]);*/
	}

}
