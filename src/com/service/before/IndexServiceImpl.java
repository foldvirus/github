package com.service.before;

import com.dao.IndexDao;
import com.po.Buser;
import com.po.Goods;
import com.po.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IndexDao indexDao;
	@Override
	public String before(Model model, HttpSession session, Goods goods) {
		model.addAttribute("noticelist", indexDao.selectNotice());
		model.addAttribute("goodsType",indexDao.selectGoodsType());
		if(goods.getId() == null)
			goods.setId(0);
		model.addAttribute("lastedlist", indexDao.getLastedGoods(goods));
		return "before/page";
	}

	@Override
	public String goodsDetail(Model model, Integer id) {
		Goods goods = indexDao.selectGoodsById(id);
		model.addAttribute("goods", goods);
		return "before/goodsdetail";
	}

	@Override
	public String selectANotice(Model model, Integer id) {
//        model.addAttribute("notice", indexDao.selectANotice(id));
        Notice notice = indexDao.selectANotice(id);
        model.addAttribute("notice", notice);
		return "before/noticeDetail";
	}

	@Override
	public String search(Model model, String mykey) {
		List<Goods> list = indexDao.search(mykey);
		model.addAttribute("searchlist", list);
		return "before/searchResult";
	}

	@Override
	public String getGoods(Model model, HttpSession session, Goods goods) {
        model.addAttribute("noticelist", indexDao.selectNotice());
        model.addAttribute("goodsType",indexDao.selectGoodsType());
		if(goods.getId() == null)
			goods.setId(0);
		model.addAttribute("getGoods",indexDao.getGoods(goods));
		return "before/goods";
	}

	@Override
	public String toLogin(Model model) {
		model.addAttribute("lbuser", new Buser());
		return "before/login";
	}
}
