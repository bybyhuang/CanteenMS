package cn.cosycloud.CanteenMS.entity;

import javax.persistence.Id;
import java.util.Date;

public class GoodsEntity extends BaseEntity {

    @Id
    private Long goodsId;

    private String goodsName;

    private String goodsImg;

    private Double goodsLeadPrice;

    private Double goodsNormalPrice;

    private String goodsDetail;

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public Double getGoodsLeadPrice() {
        return goodsLeadPrice;
    }

    public void setGoodsLeadPrice(Double goodsLeadPrice) {
        this.goodsLeadPrice = goodsLeadPrice;
    }

    public Double getGoodsNormalPrice() {
        return goodsNormalPrice;
    }

    public void setGoodsNormalPrice(Double goodsNormalPrice) {
        this.goodsNormalPrice = goodsNormalPrice;
    }

    public String getGoodsDetail() {
        return goodsDetail;
    }

    public void setGoodsDetail(String goodsDetail) {
        this.goodsDetail = goodsDetail;
    }
}
