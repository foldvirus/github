package com.controller.before;
import com.po.Goods;
import com.service.before.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	/**
	 * ��ҳ
	 */
	@RequestMapping("/before")
	public String before(Model model,HttpSession session, Goods goods) {
		return indexService.before(model, session, goods);
	}
	/**
	 * ת����Ʒ����ҳ
	 */
	@RequestMapping("/goodsDetail")
	public String goodsDetail(Model model,Integer id) {
		return indexService.goodsDetail(model, id);
	}
	/**
	 * ת������ҳ��
	 */
	@RequestMapping("/selectANotice")
	public String selectANotice(Model model,Integer id) {
		return indexService.selectANotice(model, id);
	}
	/**
	 * ��ҳ����
	 */
	@RequestMapping("/search")
	public String search(Model model,String mykey) {
		return indexService.search(model, mykey);
	}
	/**
	 * ������Ʒ
	 */
	@RequestMapping("/goods")
	public String goods(Model model,HttpSession session, Goods goods) {
		return indexService.getGoods(model, session, goods);
	}
	/**
	 * ת����¼ҳ��
	 */
	@RequestMapping("/toLogin")
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}

}
