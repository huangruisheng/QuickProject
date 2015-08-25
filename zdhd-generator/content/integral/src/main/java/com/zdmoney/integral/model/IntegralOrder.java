package com.zdmoney.integral.model;

import com.zdmoney.integral.base.BaseEntity;
import lombok.Data;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "T_TGL_INTEGRAL_ORDER")
public class IntegralOrder extends BaseEntity {

    private static final long serialVersionUID = -9161051121691375730L;

    private String accountId; // ??????ID

    private Date paymentTime; // ????????????

    private String productNoSeq; // ????????????

    private String integralStatus; // ????????????

    private String orderNo; // ?????????

    private String productName; // ????????????

    private Integer integral; // ????????????

    private Double cash; // ????????????

    private String platform; // ??????

    private Date motifyTime; 

    private String status; // ??????

    private Date integralConsumeTime; // ????????????

    private String paymentStatus; // ????????????

    private String channel; // ??????

    private String productNo; // ????????????

    private Double paymentCash; // ????????????

    private Integer accountNo; // ????????????

    private String deliveryStatus; // ????????????


}