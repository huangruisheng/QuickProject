CREATE TABLE T_TGL_INTEGRAL_ORDER(
  ID CHAR(36) NOT NULL,
	ORDER_NO VARCHAR2(30) NOT NULL,
	PRODUCT_NO VARCHAR2(30) NOT NULL,
	PRODUCT_NAME VARCHAR2(50) NOT NULL,
	PRODUCT_NO_SEQ VARCHAR2(50) NOT NULL,
  ACCOUNT_ID CHAR(36) NOT NULL,
  ACCOUNT_NO NUMBER(18) NOT NULL,
	INTEGRAL NUMBER(9) NOT NULL,
	CASH NUMBER(9,2) NOT NULL,
	CHANNEL VARCHAR2(60) NOT NULL,
	PLATFORM VARCHAR2(60) NOT NULL,
	PAYMENT_CASH NUMBER(9,2),
	PAYMENT_TIME DATE,
	INTEGRAL_CONSUME_TIME DATE,
	INTEGRAL_STATUS VARCHAR2(20) NOT NULL,
	PAYMENT_STATUS VARCHAR(20) NOT NULL,
	DELIVERY_STATUS VARCHAR(20) NOT NULL,
	STATUS VARCHAR2(20) NOT NULL,
	CREATE_TIME DATE NOT NULL,
	MOTIFY_TIME DATE,
	OPERATOR VARCHAR2(60),
  CONSTRAINT PK_TGL_INTEGRAL_ORDER PRIMARY KEY (ID)
);


COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.ID IS 'ID';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.ORDER_NO IS '订单号';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PRODUCT_NO IS '商品编号';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PRODUCT_NAME IS '商品名称';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PRODUCT_NO_SEQ IS '商品序号';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.ACCOUNT_ID IS '账户ID';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.ACCOUNT_NO IS '账户编号';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.INTEGRAL IS '消耗积分';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.CASH IS '消费现金';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.CHANNEL IS '渠道';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PLATFORM IS '平台';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PAYMENT_CASH IS '支付现金';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PAYMENT_TIME IS '支付时间';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.INTEGRAL_CONSUME_TIME IS '积分消费';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.INTEGRAL_STATUS IS '积分状态';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.PAYMENT_STATUS IS '支付状态';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.DELIVERY_STATUS IS '快递状态';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.STATUS IS '状态';
COMMENT ON COLUMN T_TGL_INTEGRAL_ORDER.CREATE_TIME IS '交易时间';