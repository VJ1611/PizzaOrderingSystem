
  CREATE TABLE "SCOTT"."POS_TBL_ORDER" 
   (	"ORDERID" VARCHAR2(6 BYTE) NOT NULL ENABLE, 
	"USERID" VARCHAR2(6 BYTE), 
	"ORDERDATE" DATE, 
	"STOREID" VARCHAR2(6 BYTE), 
	"TOTALPRICE" NUMBER NOT NULL ENABLE, 
	"ORDERSTATUS" VARCHAR2(15 BYTE), 
	"STREET" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"CITY" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"STATE" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"PINCODE" VARCHAR2(10 BYTE), 
	"MOBILENO" VARCHAR2(10 BYTE), 
	"CARTID" NUMBER, 
	 CONSTRAINT "POS_TBL_ORDER_PK" PRIMARY KEY ("ORDERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "POS_TBL_ORDER_CHK1" CHECK (
TotalPrice>0
) ENABLE, 
	 CONSTRAINT "POS_TBL_ORDER_CHK2" CHECK (
OrderStatus in ('Confirmed','Delivered','Pending','Cancelled')
) ENABLE, 
	 CONSTRAINT "POS_TBL_ORDER_POS_TBL_USE_FK1" FOREIGN KEY ("USERID")
	  REFERENCES "SCOTT"."POS_TBL_USER_CREDENTIALS" ("USERID") ENABLE, 
	 CONSTRAINT "POS_TBL_ORDER_POS_TBL_PIZ_FK1" FOREIGN KEY ("STOREID")
	  REFERENCES "SCOTT"."POS_TBL_PIZZASTORE" ("STOREID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
