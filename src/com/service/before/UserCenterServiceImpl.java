package com.service.before;

import com.dao.UserCenterDao;
import com.po.Address;
import com.po.Order;
import com.po.Pinglun;
import com.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("UserCenterService")
@Transactional
public class UserCenterServiceImpl implements UserCenterService {

    @Autowired
    private UserCenterDao userCenterDao;

    @Override
    public String userCenter(HttpSession session, Model model) {
        model.addAttribute("myOrder", userCenterDao.myOrder(MyUtil.getUsername(session)));
        model.addAttribute("myGoods", userCenterDao.myGoods(MyUtil.getUserId(session)));
        return "before/userCenter";
    }

    @Override
    public String pinglun(String content, Integer Spid, Model model, HttpSession session) {

        Pinglun pinglun = new Pinglun();
        pinglun.setTime(String.valueOf(new Date().getTime()));
        pinglun.setContent(content);
        pinglun.setUserid(MyUtil.getUserId(session));
        pinglun.setSpid(Spid);
        userCenterDao.pinglun(pinglun);
        return "forward:/userCenter";
    }

    @Override
    public String address(String name, String userphone, String address, Model model, HttpSession session) {
        Address add = new Address();
        add.setUid(MyUtil.getUserId(session));
        add.setName(name);
        add.setUserphone(userphone);
        add.setAddress(address);
        userCenterDao.address(add);
        return "forward:/userCenter";
    }

    @Override
    public String topinglun(Model model) {
        model.addAttribute("pinglun", new Pinglun());
        return "before/pinglun";
    }

    @Override
    public String toaddress(Model model) {
        model.addAttribute("address", new Address());
        return "before/address";
    }

    @Override
    public String order(HttpSession session, Model model, String shop) {

        String[] myids = shop.split(" ");
        List<Order> list = new ArrayList<>();
        for (int i = 0; i < myids.length; i++) {
            list.add(userCenterDao.order(Integer.parseInt(myids[i])));
        }
        session.setAttribute("orders", list);
System.out.println(list.size());
        return "before/useCenter";
    }
    @Override
    public String shop(HttpSession session,Model model,Integer id){
        model.addAttribute("shop",userCenterDao.shop(id));
        return "forward:/orderDetail";
    }

//    @Override
//    public List<Order> getorder() {
//
//        return null;
//    }
}
