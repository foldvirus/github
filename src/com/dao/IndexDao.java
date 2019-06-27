package com.dao;

import com.po.Goods;
import com.po.GoodsType;
import com.po.Notice;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("indexDao")
@Mapper
public interface IndexDao {
    public List<Map<String, Object>> selectNotice();
    public Notice selectANotice(Integer id);
    public List<Map<String, Object>> getLastedGoods(Goods goods);
    public Goods selectGoodsById(Integer id);
    public List<Goods> search(String mykey);
    public List<GoodsType> selectGoodsType();
    public List<Map<String,Object>>getGoods(Goods goods);
}
