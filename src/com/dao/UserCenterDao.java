package com.dao;

import com.po.Address;
import com.po.Order;
import com.po.Pinglun;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("userCenterDao")
@Mapper
public interface UserCenterDao {
    public List<Map<String, Object>> myOrder(String bemail);//我的订单
    public List<Map<String, Object>> myGoods(Integer userid);//我的商品
//    public List<Order> myorder();
    public void pinglun(Pinglun pinglun);
    public void address(Address address);
    public Order order(Integer shop);
    public String shop(Integer id);
}
