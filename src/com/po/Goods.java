package com.po;

public class Goods {
    private Integer id;
    private String mingcheng;
    private Double price;
    private Double YQprice;
    private Integer shuliang;
//    private MultipartFile logoImage;
    private String tupian;
    private Integer goodstype_id;
    private String typename;//查询时使用

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMingcheng() {
        return mingcheng;
    }

    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getYQprice() {
        return YQprice;
    }

    public void setYQprice(Double YQprice) {
        this.YQprice = YQprice;
    }

    public Integer getShuliang() {
        return shuliang;
    }

    public void setShuliang(Integer shuliang) {
        this.shuliang = shuliang;
    }

    public String getTupian() {
        return tupian;
    }

    public void setTupian(String tupian) {
        this.tupian = tupian;
    }

    public Integer getGoodstype_id() {
        return goodstype_id;
    }

    public void setGoodstype_id(Integer goodstype_id) {
        this.goodstype_id = goodstype_id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}
