package com.sanqing.util;

import java.util.List;

public class PageResult {
	private Page page;		//��ҳ��Ϣ
	private List list;		//��¼��Ϣ
	public PageResult(Page page, List list) {
		this.page = page;
		this.list = list;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
}
