package com.service.before;

import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface UserCenterService {
    public String userCenter(HttpSession session, Model model);
    public String pinglun(String content, Integer Spid, Model model, HttpSession session);
    public String topinglun(Model model);
    public String address(String name, String userphone, String address, Model model, HttpSession session);
    public String toaddress(Model model);
    public String order(HttpSession session, Model model, String shop);
    public String shop(HttpSession session, Model model, Integer id);
//    public List<Order> getorder();
}
