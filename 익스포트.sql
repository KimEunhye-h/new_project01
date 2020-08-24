--------------------------------------------------------
--  파일이 생성됨 - 금요일-8월-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EMP
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_EMP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EMP_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_EMP_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ETC
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_ETC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ETC_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_ETC_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EVENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_EVENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOSI
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_GOSI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOSI_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_GOSI_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_JOB
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_JOB"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_JOB_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_JOB_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MEMBERS
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_MEMBERS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_NOTICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_OPINION
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_OPINION"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PRESS
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_PRESS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SC
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_SC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SC_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_SC_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_UNIV
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_UNIV"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_UNIV_COMMENT
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_UNIV_COMMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_WEB_NOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "ATEAM"."SEQ_WEB_NOTICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMINIMG
--------------------------------------------------------

  CREATE TABLE "ATEAM"."ADMINIMG" 
   (	"WRITER" VARCHAR2(50 BYTE), 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ANDROID
--------------------------------------------------------

  CREATE TABLE "ATEAM"."ANDROID" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"HIRE_DATE" VARCHAR2(20 BYTE), 
	"IMAGE_PATH" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_EMP
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_EMP" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'emp', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_EMP_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_ETC
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_ETC" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'etc', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_ETC_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_GO
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_GO" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'go', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_GO_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_GO_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_JOB
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_JOB" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'job', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_JOB_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_SC
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_SC" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'sc', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_SC_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_SC_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_UN
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_UN" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE) DEFAULT 'un', 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_UN_COMMENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."COMMUNITY_UN_COMMENT" 
   (	"ID" NUMBER, 
	"PID" NUMBER, 
	"WRITER" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"SECRETREPLY" VARCHAR2(20 BYTE) DEFAULT 'n'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table D_DAYLIST
--------------------------------------------------------

  CREATE TABLE "ATEAM"."D_DAYLIST" 
   (	"TITLE" VARCHAR2(1000 BYTE), 
	"PICKERDATE" VARCHAR2(100 BYTE), 
	"D_DAY" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."EVENT" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(500 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"READCNT" NUMBER DEFAULT 0, 
	"ROOT" NUMBER, 
	"STEP" NUMBER DEFAULT 0, 
	"INDENT" NUMBER DEFAULT 0, 
	"GDSTHUMBIMG" VARCHAR2(200 BYTE), 
	"GDSIMG" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FRIEND
--------------------------------------------------------

  CREATE TABLE "ATEAM"."FRIEND" 
   (	"USER_NAME" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"JOB" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "ATEAM"."MEMBERS" 
   (	"EMAIL" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"PW" VARCHAR2(30 BYTE), 
	"JOB" VARCHAR2(70 BYTE), 
	"JOIN_DATE" DATE DEFAULT SYSDATE, 
	"ADMIN" VARCHAR2(10 BYTE) DEFAULT 'n', 
	"PARENTS" VARCHAR2(10 BYTE) DEFAULT 'n', 
	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ATEAM"."MEMBERS"."ADMIN" IS 'y/n';
--------------------------------------------------------
--  DDL for Table MYLIST
--------------------------------------------------------

  CREATE TABLE "ATEAM"."MYLIST" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT SYSDATE, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"CATEGORY" VARCHAR2(40 BYTE), 
	"COMMENTCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "ATEAM"."NOTICE" 
   (	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(3000 BYTE), 
	"TODAY" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OPINION
--------------------------------------------------------

  CREATE TABLE "ATEAM"."OPINION" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"ROOT" NUMBER, 
	"STEP" NUMBER DEFAULT 0, 
	"INDENT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRESS
--------------------------------------------------------

  CREATE TABLE "ATEAM"."PRESS" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(500 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"READCNT" NUMBER, 
	"ROOT" NUMBER, 
	"STEP" NUMBER, 
	"INDENT" NUMBER, 
	"GDSTHUMBIMG" VARCHAR2(200 BYTE), 
	"GDSIMG" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RASP
--------------------------------------------------------

  CREATE TABLE "ATEAM"."RASP" 
   (	"START_TIME" VARCHAR2(50 BYTE), 
	"END_TIME" VARCHAR2(50 BYTE), 
	"ACCUPATION_TIME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STUDY
--------------------------------------------------------

  CREATE TABLE "ATEAM"."STUDY" 
   (	"NAME" VARCHAR2(50 BYTE), 
	"SUBJECT" VARCHAR2(15 BYTE), 
	"TIME" VARCHAR2(20 BYTE), 
	"TODAY" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUBJECT
--------------------------------------------------------

  CREATE TABLE "ATEAM"."SUBJECT" 
   (	"SUBJECT" VARCHAR2(50 BYTE), 
	"SUBJECTTIME" VARCHAR2(50 BYTE), 
	"TODAY" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MESSAGE
--------------------------------------------------------

  CREATE TABLE "ATEAM"."TBL_MESSAGE" 
   (	"MID" NUMBER, 
	"TARGETID" VARCHAR2(50 BYTE), 
	"SENDER" VARCHAR2(50 BYTE), 
	"MESSAGE" VARCHAR2(4000 BYTE), 
	"OPENDATE" DATE, 
	"SENDDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TESTTIME
--------------------------------------------------------

  CREATE TABLE "ATEAM"."TESTTIME" 
   (	"SUBJECT" VARCHAR2(50 BYTE), 
	"SUBJECTTIME" VARCHAR2(50 BYTE), 
	"DAY" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table WEB_NOTICE
--------------------------------------------------------

  CREATE TABLE "ATEAM"."WEB_NOTICE" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(300 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"READCNT" NUMBER DEFAULT 0, 
	"FILENAME" VARCHAR2(300 BYTE), 
	"FILEPATH" VARCHAR2(300 BYTE), 
	"ROOT" NUMBER, 
	"STEP" NUMBER DEFAULT 0, 
	"INDENT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into ATEAM.ADMINIMG
SET DEFINE OFF;
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('2','back_img3.jpg','/upload/education/2020/08/20/6fc7c9e8-b0c9-4266-9d86-a6e9ae525468_back_img3.jpg',3);
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('2','hong-kong-864884_1920.jpg','/upload/education/2020/08/21/cf21a3ba-2a82-4365-b335-0a6e4117689e_hong-kong-864884_1920.jpg',1);
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('2','back_img1.jpg','/upload/education/2020/08/20/97a072fa-cbaf-4aef-a69d-323dbcd08b93_back_img1.jpg',2);
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('2','work-5382501_1920.jpg','/upload/education/2020/08/20/d2c82438-6947-434a-bdea-6f97aec19da5_work-5382501_1920.jpg',4);
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('2','back_img4.jpg','/upload/education/2020/08/20/aa7a2130-6ab6-47e2-9c6d-e048865c2910_back_img4.jpg',5);
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('관리자','xvm09daxz5v6451.jpg','/upload/education/2020/08/20/9b59c312-de5c-4924-8780-ad02049d07a2_xvm09daxz5v6451.jpg',6);
REM INSERTING into ATEAM.ANDROID
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_EMP
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'사회생활 힘드신 분들을 위해 성공하는 법 네가지 알려드립니다.','1. 사회적 계층으로 봤을때 윗사람에게 의지하라

2. 정치를 하지 않으려면 두루두루 친해라.

3. 내 허물을 줄일 생각을 하기 보다 타임의 허물을 보아도 지나치는 관용있는 사람이 되라.

4. 약하다고 생각하는 사람을 밟거나 강요해서 이득을 취할생각은 절대 하지 마라.

이상 제가 겪은 바 혹시나 인간관계에 힘드신 분들을 위해 적어봤습니다.
편안한 저녁되세요^^','쇼닝',to_date('20/08/18','RR/MM/DD'),0,null,null,'emp',0);
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (11,'[직장인]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','2',to_date('20/08/15','RR/MM/DD'),5,null,null,'emp',1);
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'직장인 글 테스트입니다','직장인 글 테스트','오현진',to_date('20/08/19','RR/MM/DD'),0,null,null,'emp',0);
REM INSERTING into ATEAM.COMMUNITY_EMP_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_ETC
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_ETC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'카테고리 기타에 글쓰기 테스트','테스트입니다.','오현진',to_date('20/08/19','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.COMMUNITY_ETC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (6,'[기타]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','2',to_date('20/08/15','RR/MM/DD'),5,null,null,'etc',0);
REM INSERTING into ATEAM.COMMUNITY_ETC_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_GO
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_GO (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[고시]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','관리자',to_date('20/08/17','RR/MM/DD'),1,null,null,'go',0);
Insert into ATEAM.COMMUNITY_GO (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'군무원 vs 직업군인 차이점','1. 군무원
군무원은 군부대에서 군인과 함꼐 근무하는 특정직 공무원 입니다.
과거 군무원은 현역인력을 보완하는 보조 인력이었ㅎ다면
현대에 와서는 어려운 업무의 전문성, 지속성을 가진 공무원으로서 업무에 투입됩니다.

2.직업군인
직업군인은 지휘관으로서 일반병사를 지휘 통솔하거나 혹은 참모로서 지휘관을 보좌하여 정보, 작전, 인사, 군수 등 전문 업무를 수행합니다.
외부의 모든 군사적 위협으로부터 국가를 보위하고 전쟁을 억제하며 군사적 긴장을 완화시켜 평화를 지키는 일을 합니다.

3. 군무원이 하는 일
군무원은 국방부, 육군, 해군, 공군의 기관 내에서 정보관리사무, 행정, 군 지원 업무 등을 담당하게 됩니다.
또한, 건축, 전자, 토목 등 즥렬별로 다양한 업무를 담당하게 됩니다.

4.직업군인이 하ㅣ는 일
일반병사 지휘통솔, 정보, 작전, 인사, 군수 등 전문 업무를 수행합니다.
또한, 중요시설에 대한 경계, 국가기간산업의 보호, 환경보호 활동 지원, 지역개발 지원, 구난, 구조 등 평화유지 활동, 해양수송로 보호 등의 일을 합니다.','성공할거야',to_date('20/08/17','RR/MM/DD'),4,null,null,'go',0);
REM INSERTING into ATEAM.COMMUNITY_GO_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_JOB
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[취준생]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','관리자',to_date('20/08/17','RR/MM/DD'),1,null,null,'job',0);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'[초대졸] 대기업 생산직 취업분야','안녕하세요 취업준비생 여러분

이번에는 생산직 직군 지원자를 위한

하반기 대비 대기업 생산직 준비 TIP을 확인해보았습니다.

대기업 생산직, 생산직이란 무엇인지부터 알아보았습니다.

생산관련 직무는 크게 생산직, 생산관리직, 품질관리직으로 나눌 수 있다고 합니다.

그 중 생산직은 자사 제품을 일정 공정을 거쳐 생산하는 직무라고 합니다.

생산직은 생산라인이 일정한 시간/간격/목표에 의해 움직이므로 성실함을 기본으로 갖추고 있어야 한다고 해요.

?

대기업 생산직 직무에서 요구하는 대표 역량은

직무 관련 지식, 대인관계 능력, 리더십, 성취욕구, 분석력이 있다고 합니다.

마지막으로 초대졸 대기업 생산직 취업분야 리스트를

아래 사진으로 하여 공유해봅니다.

참고해보세요!!','관리자',to_date('20/08/17','RR/MM/DD'),0,'1.PNG','/upload/job/2020/08/17/ea20fd52-9c26-4731-ac28-7c91e58440a7_1.PNG','job',0);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'OOOOO 인사팀 1차 면접 결과 받으신 분?','인사팀 1차 면접 결과 받으신 분?','탈출백',to_date('20/08/17','RR/MM/DD'),4,null,null,'job',2);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'드디어 백수생활 끝났습니다','면접보러가서 긴장하고 대답도 못했는데 다음주에 합격했다고 연락이 왔습니다ㅠㅠ
드디어 백수 탈출했습니다.
처우는 오히려 전 회사보다 좋습니다 연봉은 비슷하나 성과금, 인센티브 별도라네요
정말 행복합니다.
저 같은 놈도 취업 성공했습니다. GOOD PARTNER회원님들도 할 수 있으니 좀 만 더 화이팅 하시면 좋을 곳 가실 겁니다 화이팅!!!!!!!!!!!!','쇼닝',to_date('20/08/18','RR/MM/DD'),3,null,null,'job',2);
REM INSERTING into ATEAM.COMMUNITY_JOB_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,24,'크림크','진짜 고생하셨습니다 축하드려요^^',to_date('20/08/19','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,23,'크림크','아직 연락이 안오네요ㅠ',to_date('20/08/19','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (21,23,'성공할거야','인사팀 31일 본 거 아직 안나오신 건가요?
전 불합격자 연락 안준다고 생각하고 있었습니다...ㅠ',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,24,'썬','축하드립니다^^',to_date('20/08/18','RR/MM/DD'),'n');
REM INSERTING into ATEAM.COMMUNITY_SC
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'한국사 책 무료나눔 합니다~^^','1. 큰별 고급 - 필기 다 되어있는 상태(기본서)

2. 책 상태 깨끗(기본서)

3. 기출문제집 (새 책)

4. 기출문제집 (거의 다 풀었음)

관심 있으시면 쪽지 해주세요~^^','숀맘',to_date('20/08/17','RR/MM/DD'),16,'1.JPG','/upload/sc/2020/08/17/19015f46-a11b-4d32-8c40-1f897f1a16c7_1.JPG','sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'[전남광주]대입 스터디 모집합니다!','자소서부터 시작하여 원하는 대학을 목표로 함께 공부하실 스터디원을 모집합니다

주 1회 모임으로 스터디카페에서 시작 할 생각입니다

참여 원하시는 분들은 쪽지나 댓글 주세요^^!','하늘',to_date('20/08/17','RR/MM/DD'),8,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'워드 프로세서 궁금!','워드프로세서 실기 책을 구해보려고 하는데 2017이나 2018년도 처럼 옛날 책으로 공부해도 무관할까요?
공부해보신 분 들 팁 좀 알려주세요!!','성공대입',to_date('20/08/17','RR/MM/DD'),8,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'다들 어디 대학 노리고 계신가요?','저는 인서울을 노리고 있는데  계속 열심히 하다가 오늘은 너무 지쳐서 갑자기 회의감이 드는 날이네요..
다들 어디 입시 준비중이신가요?  이렇게 기운이 빠지는 날엔 극복할 수 있는 방법도 좀 알려주세요~ 다들 오늘도 화이팅 입니다!^^','크림크',to_date('20/08/17','RR/MM/DD'),10,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'한국사 무료 인강 추천좀요','부탁드립니다','썬',to_date('20/08/17','RR/MM/DD'),9,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (66,'토익 스피킹 레벨 6, 7 족보 자료 입니다!','토익 스피킹 레벨 6, 7 족보자료 판매합니다!

토익스피킹 가이드북은 아래와 같은 분들께 추천 드립니다.

▶획득하고자 하는 토익스피킹 목표점수가 Lv6 ~ Lv7 이신 분들
▶ 토스를 시작하려는데 인강이나 교재 없이 단기간에 완송하고 싶다
▶토스 공부를 했지만 본인만의 말하기 방식이 정립되지 않으신 분들
▶인정 수준 이상을 목표로 더 많은 양질의 말하기 소스가 필요하다
▶토스준비의 핵심인 템플릿+세부내용정리가 필요하신 분들

본 가이드북은 4천원의 금액을 받고 거래 할 생각입니다!!

관심있으신 분 쪽지주세요^^','쇼닝',to_date('20/08/18','RR/MM/DD'),5,'2.JPG','/upload/sc/2020/08/18/0e570520-b85f-4b6a-b549-f8b37adc7988_2.JPG','sc',1);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'제가 갈 수 있는 대학이 있을까요?','현재 고등학교 3학년 전자과 재학 중인 학생입니다.

내신등급은 전자과목 제외 국 수 사 과 영 해서 2.11등급 나옵니다ㅏ.

프로그래밍학과
3D 모델링관련학과
시각디자인학과

이 세가지 관련해서 2.11등급이 갈 수 있는, 갈만한 대학이 있을까요?','탈출백',to_date('20/08/18','RR/MM/DD'),4,null,null,'sc',1);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'한국사 1점ㅜㅜ','최근 시험 가채점 결과 79점으로 2급일 것 같은데 한 번 더 쳐야할까요..?
1급 2급 가산점 차이가 큰가요? 사무쪽입니다','취업가자아으',to_date('20/08/18','RR/MM/DD'),6,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'컴활','1급 준비하려는데 필기는 인강이랑 기출 돌릴 생각인데 실기는 학원이 나으려나요ㅠㅠ?','하하',to_date('20/08/18','RR/MM/DD'),3,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'어디가야할까요..','1.제약회사 생산
연봉 3500내외 4조 3교대
집에서 3시간거리

2.식품회사 생산
연봉 3천
교대근무인지 모름
집에서 3~40분
 

님들이라면 어디가실건가요.. 둘 다 복지는 괜찮음','숀맘',to_date('20/08/18','RR/MM/DD'),8,null,null,'sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'때에 맞는 고민이 중요한 이유','남들과 비교를 하지 말라는 말은 많이 들었을 겁니다.
비교를 하면 할 수록 불행해지고 자존감이 낮아지는건 맞는 거 같아요.
그렇지만 꼭 하세요. 비교 중요합니다.

이 친구보다, 내가 얼마 받고 얼마 덜 받고 이런 단순한 비교가 아니라
시기에 대한 비교와 가늠은 꼭 필요한 것 같습니다..','성공할거야',to_date('20/08/18','RR/MM/DD'),8,null,null,'sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'해방감 이라는 감정이 그립다','가끔 토익같은 시험 하나 치고나면 딱 하루 맛보기로 느낄 수 있었던 그 감정..

현재 제대로 느낄 수가 없네..

어떤 감정이었는지 미치도록 다시 느껴보고 싶다ㅠ','크림크',to_date('20/08/18','RR/MM/DD'),20,null,null,'sc',7);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (283,'공지사항입니다','공지','관리자',to_date('20/08/21','RR/MM/DD'),0,null,null,'sc',0);
REM INSERTING into ATEAM.COMMUNITY_SC_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,61,'크림크','3번 기출 문제집 관심있어서 쪽지 드렸습니다 확인 부탁드려요^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,61,'썬','댓글 확인 하시면 010-0000-0000으로 문자 한 통 부탁드립니다!',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,61,'하늘','한국사 이젠 필수죠..ㅠㅠ',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (25,63,'하늘','워드 공부중이에요!
아무래도 최신책으로 하시는 걸 추천 드립니다 버전에 따라 사소하게 변경되는 부분이 있다보니 최신 책으로 구매하셔서 해보세요^^!',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (26,63,'성공대입','아 그렇군요..정보 감사합니다^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (27,62,'성공대입','전남 광주 입니다! 어느 동네에서 진행 하실 예정이신가요?',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (28,64,'성공대입','열심히 하더라도 항상 그런 시기가 오더라구요ㅠㅠ
지금은 힘들겠지만 목표를 이뤘을때 행복 할 모습을 생각해보시면서 힘내세요!^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (29,64,'숀맘','많이 힘든 시기이니 어느 누구나 겪는 일일거에요
화이팅 하시기바랍니다.',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (30,62,'숀맘','저도 관심이 있는데 쪽지 한 번 부탁드려요^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (31,61,'숀맘','1번 책은 썬님에게 양도 완료 되었습니다~',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (32,65,'숀맘','이투스 최ㅌ성 선생님 강의 좋습니다! 커뮤니티 공지사항에 위배될 수 있으니 비밀댓글로 알려드려요!^^',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (41,72,'쇼닝','조금만 더 노력하시면 곧 느끼실 수 있을거에요ㅠㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (34,65,'썬','감사합니다^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (35,62,'썬','전남 광주 입니다 010-0000-0000으로 연락 한 번 부탁드려요!',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (42,71,'쇼닝','마인드가 저랑 완전 똑같으시네...신기할정도로...',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (43,70,'쇼닝','가까운게 생각보다 많이 중요하더라구요.',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (44,69,'쇼닝','실기도 인강으로 커버 가능 합니다',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (45,67,'쇼닝','대입은 담임쌤과 함께 상담해보는게 제일 좋은 것 같습니다!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (46,66,'쇼닝','댓글 확인 하시면 010-0000-0000으로 연락 부탁드립니다',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (47,68,'쇼닝','아쉽더라도 한 번 더 치시는거 추천드립니다.
서탈하시면 그거때매 그랬나 하고 후회하고 현타옵니다ㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (48,64,'쇼닝','열심히했기때문에 느낄 수 있는 감정입니다^^
응원할게요 저희 같이 힘 냅시다!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (56,70,'하늘','2222222222',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (50,71,'크림크','긍정적인 자극이네요^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (51,70,'크림크','저라면 무조건 2입니다 집에서 다니는게 생각보다 정말 중요합니다',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (52,69,'크림크','실기 인강 돌리시면 가능합니다!!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (53,68,'크림크','저도 한 번 더 치셔서 1급 노리시는거 추천드립니다...ㅠㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (54,72,'하늘','무슨기분인지 알 것 같아요 이제는 취업 성공해야 느낄 수 있을거 같기도 하고..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (55,71,'하늘','네 맞는말인것같네요...',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (57,72,'썬','화이팅합시다ㅜㅜ!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (58,71,'썬','정말 맞는 말입니다..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (59,72,'썬','ㅎㅇㅌ',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1087,72,'관리자','화이팅!!!아자자',to_date('20/08/20','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1088,65,'관리자','테스트',to_date('20/08/20','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1089,72,'관리자','비밀댓글',to_date('20/08/21','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1090,70,'관리자','비밀댓글',to_date('20/08/21','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1086,72,'정민영','힘내여',to_date('20/08/20','RR/MM/DD'),'y');
REM INSERTING into ATEAM.COMMUNITY_UN
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (25,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/17','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/17','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (26,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (27,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/18','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (28,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/18','RR/MM/DD'),8,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (29,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/18','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (30,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/18','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (31,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (32,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/18','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (34,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (35,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (36,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (37,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (38,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (39,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),7,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (40,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (41,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (42,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (43,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (45,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (46,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (47,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (48,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (49,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (50,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (51,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (52,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (53,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (54,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (56,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (57,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (58,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (59,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (60,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (73,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (74,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (75,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (76,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (78,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (79,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (80,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (81,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (82,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (83,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (84,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (85,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (86,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (87,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (89,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (90,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (91,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (92,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (93,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (94,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (95,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (96,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (97,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (98,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (100,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (101,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (102,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (103,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (104,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (105,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (106,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (107,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (108,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (109,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (111,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (112,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (113,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (114,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (115,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (116,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (117,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (118,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (119,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (120,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (122,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (123,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (124,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (125,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (126,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (127,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (128,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (129,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (130,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (131,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (133,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (134,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (135,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (136,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (137,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (138,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (139,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (140,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (141,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (142,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (144,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (145,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (146,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (147,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (148,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (149,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (150,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (151,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (152,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (153,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (155,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (156,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (157,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (158,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (159,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (160,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (161,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (162,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (163,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (164,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (165,'[대학/편입]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','관리자',to_date('20/08/19','RR/MM/DD'),3,null,null,'un',0);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (166,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (167,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (168,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (169,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (170,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (171,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (172,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (173,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (174,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (175,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (176,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (177,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (178,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (179,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (180,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (181,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),7,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (182,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (183,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (184,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (185,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (187,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (188,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (189,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),14,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (190,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (191,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (192,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (193,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (194,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (195,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (196,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),12,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
REM INSERTING into ATEAM.COMMUNITY_UN_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (21,24,'성공할거야','3학년 이시니 영어점수 만드시는게 좋을 것 같습니다 공대의 경우 학점+영어점수 준비되면 4학년때 바로 서류 지원 해보시는게 좋습니다.',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,24,'탈출백','영어 위주로 하시는게 좋을 듯 합니다~^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,23,'탈출백','서두를 필요 하나 없습니다 아직 젊으시니 조금 더 생각해보시고 좋은 곳 찾아가시길 바랍니다^^!',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,23,'취업꿈나무','잘 하고 계십니다. 차분히 내가 하고싶은 걸 고민해보세요',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (25,24,'하늘','휴학 후 토익도 괜찮을듯하네요^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (26,23,'하늘','너무 서두르지 마세요 차분히 본인이 원하는 업무를 먼저 찾아보시고 그에 맞는 준비를 하시는걸 추천드립니다^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (27,23,'성공대입','화이팅!!!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (28,24,'성공대입','토익 필수입니다ㅠㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (29,25,'성공대입','취업 원하시는 기업을 목표로 잡고 생각을 해보세요^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (30,26,'성공대입','공무원 갑시다!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (31,25,'하늘','감사합니다ㅠㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (32,26,'하늘','학점은 요즘 중요하지 않아요',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (33,27,'하늘','토익이 중요하고 그 다음 면접으로 가를 거 같네요..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (34,23,'썬','원하는 기업목표를 한 번 세워보세요~
화이팅입니다^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (35,24,'썬','토..익.........',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (36,25,'썬','세상에 패션업종 기업은 정말 많습니다!
화이팅하세요^^!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (37,26,'썬','저도 공무원 추천드립니다 관광업종이라면 특히 외국어가 필수가 되어야하지 않을까요?ㅠㅠ',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (42,27,'숀맘','면접도 중요합니다!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (39,27,'썬','제 생각엔 토익이 우선시 될 것 같아요~',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (40,25,'숀맘','제 기준 편입은 추천드리지 않습니다.
우선 입사하시길 원하시는 기업을 목표로 잡으시고  그에 맞춰 준비해보시길 바랍니다^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (41,26,'숀맘','이제 3-2면 빠듯하지만 시간은 있네요 시간이 부족한 만큼 정신 차리고 한가지 방향으로 길을 좁히는게 좋아보여요.',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (43,28,'숀맘','쪽지 드렸습니다 확인 하시면 답장 부탁드려요~^^',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (47,29,'취업꿈나무','대학생활을 하기 위한것이 휴학의 이유라면 반대하고 싶네요',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (45,29,'탈출백','대학시절 주변에 공부한다고 휴학한 사람들중에 독한사람 아닌이상 다 1년 재밌게 놀다 오던데..잘 생각해보세요ㅎㅎ
학교생활 즐기는것도 중요하지만 3,4학년 학교생활은 어차피 공부하고 취준해야하기 때문에..ㅎㅎ 1,2학년 빡씨게 놀고 끝내는게 좋다고 생각됩니다',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (46,28,'탈출백','판매 완료 되었나요?',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (49,30,'성공할거야','저도 잘 모르겠지만 현실적으로 현재 무엇을 할 수 있는지 상황을 힘빼고 둘러보시는게 어떤지요..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (50,29,'성공할거야','4학년은 이제 취업준비를 한창 할때라 대학생활을 즐길 순 없어요..잘 생각해보시길^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (54,32,'쇼닝','IT쪽 노린다면 좋은듯',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (55,31,'쇼닝','기업의 인재상에 맞춰서 써내려가다 보면 금방 쓰실 수 있어요 화이팅!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (56,30,'쇼닝','화이팅입니다!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (57,32,'숀맘','5기는 언제 모집하려나요',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (58,28,'썬','판매완료입니다!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (59,32,'썬','중간에도 취직가능..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (60,31,'썬','화이팅입니다!',to_date('20/08/18','RR/MM/DD'),'n');
REM INSERTING into ATEAM.D_DAYLIST
SET DEFINE OFF;
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('중간고사','2020년 8월 31일','2020년 08월 21일','이윤하');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('fh','2020년 8월 26일','2020년 07월 30일','김은혜');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('정처기','2020년 8월 28일','2020년 08월 21일','이윤하');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('djd','2020년 8월 20일','2020년 08월 17일','임수빈');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('57','2020년 8월 26일','2020년 08월 17일','정민영');
REM INSERTING into ATEAM.EVENT
SET DEFINE OFF;
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (48,'[명품박람회]경북교육청-삶의 힘을 키우는 따뜻한 교육현장','경상북도교육청(교육감 임종식)은 ''신나는 교실·소통하는 학교·함께 여는 미래''라는 슬로건 아래 삶의 힘을 키우는 따뜻한 교육현장을 만들어 가고 있다.

오는 21일부터 3일간 대구 엑스코에서 개최되는 이번 명품대구경북박람회를 통해 경북교육청은 올해 경북 교육의 주요 정책 및 사업 등 소개할 계획이다.

박람회를 통해 ▷배움이 있는 교실, 변화하는 학교 ▷성장을 지원하는 미래교육 ▷모두에게 희망을 주는 교육복지 ▷안전하고 믿음직한 교육 환경을 만들기 위해 청내 15개 부서가 일하는 모습 등을 담은 영상을 제작해 홍보 및 소개할 예정이다.

경북교육은 모든 아이들이 자신의 미래를 살아갈 수 있는 힘을 기를 수 있도록 결과보다는 과정을, 다그침보다는 기다림을 지향하고 있다.

이를 실현하기 위해 경북교육청은 ▷놀이중심의 초등 교육과정 운영 ▷꿈 키움 학습동아리 지원 ▷미래교육 학부모 아카데미 운영 ▷초?중?고등학생을 위한 인문학 아카데미 운영 ▷무상급식 확대 ▷고등학교 무상교육 실시 ▷모든 사립유치원 에듀파인 의무도입 ▷학교공간혁신 통합 추진 등의 다양한 사업을 추진하고 있다.

임종식 교육감은 "이번 행사가 이런 경북교육의 따뜻함이 우리 지역 사회의 미래인 아이들에게 전해지고 있는 과정을 보여주는 뜻깊은 자리가 되기를 바란다"고 말했다.
','관리자',to_date('20/08/17','RR/MM/DD'),3,47,0,0,'imgUpload\2020\08\20\s_5aac8b73-80b3-4f34-8870-46d66c6c8d88_library-438389_1920.jpg','imgUpload\2020\08\20\5aac8b73-80b3-4f34-8870-46d66c6c8d88_library-438389_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (50,'[대구시]젊고 열정 있는 ''열린 도시 대구'',  코로나19 극복','대구시(시장 권영진)는 이번 박람회를 통해 ''젊은 도시, 열린 도시, 열정 도시''의 면모를 선보인다. 다양성과 포용, 활력, 열정, 발전적 에너지 등을 의미하는 ''컬러풀 대구''(Colorful DAEGU)를 브랜드로 하는 대구는 국채보상운동과 2·28 민주운동의 발상지이자 근대화의 심장부라는 자긍심을 바탕으로 미래를 향해 나아간다는 점을 부각할 예정이다.

대구는 사방이 아름다운 산으로 둘러싸여 있고, 도심을 남북으로 가로지르는 하천이 흐르는 천혜의 환경을 갖춘 친환경 녹색도시이며, 883㎢의 면적에 250만이 거주하고 있는 대도시다. 교육과 의료, 문화 등 수도권 못지않은 생활 인프라가 장점이다. 아울러 대구경북 통합신공항 사업과 시청 신청사 건립을 통해 대구의 새로운 미래공간을 구축할 계획이다.

대구는 근대화를 이끈 도시다. 세계적 기업인 삼성이 탄생한 곳이며 1960~1970년대 섬유산업을 기반으로 한국형 산업혁명을 이끌었다. 최근에는 물과 의료, 에너지, 미래형 자동차, 로봇, 스마트시티 등 4차산업 육성을 통해 미래산업을 선도하는 도시로 나아가고 있다.

즐길 거리가 많은 곳이기도 하다. 대구컬러풀페스티벌과 대구치맥페스티벌, 대구국제뮤지컬페스티벌, 대구국제오페라축제 등 사계절 다양한 행사로 즐거운 도시로 거듭났다. 오는 2021년에는 세계가스총회가 열리기도 한다.

특히 이번 박람회에서 ''Again 대구!''라는 주제로 코로나19를 극복한 배경을 소개할 예정이다.','관리자',to_date('20/08/17','RR/MM/DD'),2,49,0,0,'imgUpload\2020\08\20\s_60e40a16-8f3c-479b-8540-efc027c36abe_financial-2860753_1920.jpg','imgUpload\2020\08\20\60e40a16-8f3c-479b-8540-efc027c36abe_financial-2860753_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (52,'광주서 고 김대중 전 대통령 11주기 맞아 민주인권포럼·전시회','(광주=연합뉴스) 장덕종 기자 = 고(故) 김대중 전 대통령의 11주기를 맞아 광주에서 김 전 대통령의 유산을 되돌아보는 민주인권평화포럼과 전시회가 개막했다.

광주시는 17일 김대중컨벤션센터에서 ''2020 김대중 민주인권평화포럼''과 ''대한민국 민주 장정 120년 전시회'' 개막식을 개최했다,

행사에는 이용섭 시장과 김용집 광주시의회 의장, 설훈·김두관 국회의원 등이 참석했다.

행사는 테이프 커팅, 전시회 라운딩, 개회사, 기념 대담 등 순으로 진행됐다.

참석자들은 대한민국 근현대사에서 큰 획을 그은 민주화운동을 9개 주제로 구성한 민주 장정 120년 전시관을 찾아 동학농민혁명부터 3·1운동, 광주학생독립운동, 촛불혁명 등 민주주의 역사의 현장을 살펴봤다.

5·18민주화운동 전시관에서는 당시 전남도청이 계엄군에 진압되던 1980년 5월 27일 새벽 방송을 한 박영순 씨의 이야기를 가상현실로 다룬 콘텐츠를 체험하며 그날의 의미를 되새겼다.

''정의란 무엇인가''의 저자인 마이클 샌델 하버드대 교수와 박명림 연세대 김대중도서관장의 대담이 온라인으로 진행됐다.

마이클 샌델 교수는 민주주의의 위기를 해소하기 위해 리더십과 시민의 참여가 중요하다며 김 전 대통령이 보여준 리더십과 5·18에서 민주주의 이상을 위한 시민들의 헌신과 노력은 전 세계 민주주의의 귀감이 되고 있다고 강조했다.

''보편과 세계의 눈으로 본 5·18과 김대중''이라는 주제로 열린 학술회의와 라운드 테이블에서는 김홍걸·송갑석·김두관 의원이 ''한국 민주화와 한반도 평화''를 주제로 토의했다.

이용섭 시장은 "광주는 나라가 어려울 때마다 시대 정신과 대의를 좇아 자기희생을 통해 역사의 물꼬를 바로 돌렸다. 특히 대한민국 현대사에서 민주·인권·평화의 씨앗을 뿌렸다"며 "나라가 어려운 이 시기에 국민들, 특히 정치권이 민주·인권·평화의 진정한 의미와 가치를 되새기는 계기가 됐으면 좋겠다"고 말했다.

전시회는 11월 8일까지 김대중컨벤션센터에서 열린다.','관리자',to_date('20/08/17','RR/MM/DD'),4,51,0,0,'imgUpload\2020\08\20\s_b821413c-5984-49e3-8daf-df4f7c0d418b_tie-690084_1920.jpg','imgUpload\2020\08\20\b821413c-5984-49e3-8daf-df4f7c0d418b_tie-690084_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (54,'대학 창의적 자산 실용화 포럼 개최','교육부와 한국연구재단은 연세대에서 ''대학 창의적 자산 실용화 

성과 포럼''을 개최합니다. 

 

창의적 자산 실용화 지원 사업은 

대학이 특허 등 우수기술을 실용화하도록 정부가 체계적으로 지원하는 프로그램으로, 올해부터 3년 동안 20개 사업단에 

연간 150억 원, 

모두 450억 원이 투입됩니다. 

 

오늘 포럼에선 

양자점 기반 형광물질을 이용해 

식중독균등을 검출하는 

서강대 정옥현 교수의 

바이오 진단키트 상용화 사업과 

전남대 정호영 교수의 

배터리·에너지 저장기술 등의 사례가 

소개됩니다. ','관리자',to_date('20/08/17','RR/MM/DD'),2,53,0,0,'imgUpload\2020\08\20\s_0b08e8bf-0c18-4b8e-a639-83208627b69c_work-5382501_1920.jpg','imgUpload\2020\08\20\0b08e8bf-0c18-4b8e-a639-83208627b69c_work-5382501_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (56,'AM 4시, 밤의 미술관에 오세요','<이상 소설 전집 -''지도의 암실'' 중>

“네 시에 누우면 다섯, 여섯, 일곱, 여덟, 아홉

그리고 아홉 시에서 열 시까지

리상- 나는 리상이라는 한 우스운 사람을 안다.“

  

이상이

또 다른 자기 자신을 만나는 시간이라고 표현한

새벽 네 시.

  

‘새벽 4시’ 전은 바로 이 점에 착안해

가상과 현실, 과거와 미래가 혼재된 오늘을

다양하게 표현하고 있습니다.','관리자',to_date('20/08/17','RR/MM/DD'),14,55,0,0,'imgUpload\2020\08\20\s_a7d0bace-2c5e-4114-8b0d-b97382f66bbd_back_img2.jpg','imgUpload\2020\08\20\a7d0bace-2c5e-4114-8b0d-b97382f66bbd_back_img2.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (58,'수험생을 위한 할인 연극','이번주 ‘문화공감’에서는요, 

그동안 고생하신 수험생 여러분을 위한 

할인 연극 공연을 준비해보았습니다. 

  

이 수험표만 갖고 계신다면 

지금 바로 공연 현장으로 떠나보시죠!','관리자',to_date('20/08/17','RR/MM/DD'),2,57,0,0,'imgUpload\2020\08\20\s_24c6ef2f-50ad-4dc7-b401-e08fc7554fa3_children-593313_1920.jpg','imgUpload\2020\08\20\24c6ef2f-50ad-4dc7-b401-e08fc7554fa3_children-593313_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (60,'‘창업박람회 in 광주’ 8월 20일 광주 김대중컨벤션센터 개최','‘제5회 제일 창업박람회 in 광주’가 오는 8월 20일~22일 광주 김대중컨벤션센터에서 개최된다.

이번 행사는 한국중소기업프랜차이즈협회와 제일창업경제신문이 주최하고 제일좋은전람(대표 홍병열)이 주관한다. 또한 광주경제고용진흥원 후원하여 광주 로컬기업을 지원한다.

이번 박람회에서는 전국 프랜차이즈 브랜드와 창업아이템이 한자리에 모인다. 창업을 준비하고 있는 예비 창업자가 가장 궁금해하는 것은 창업아이템이라는 답변이 가장 많다. 예비창업자는 창업아이템을 먼저 정하기도 하지만 창업을 하겠다는 마음을 먹고 창업아이템을 찾는다.

제일창업박람회in광주는 예비창업자에게 창업정보와 다양한 비지니스를 접할 수 있는 기회를 제공하고, 최신 창업 트렌드에 대한 인사이트를 얻을 수 있는 다양한 프로그램을 선보일 예정이다. SNS통해 다양한 이벤트도 진행중이다.



2020년은 배달에 대한 관심이 어느때보다 뜨겁게 시작된 해였다. 코로나19로 인해 홀 매출이 감소하고 배달 매출이 크게 증가했는데, 어떻게 대처해야 할지 모르는 사장님들이 많았다. 그런 예비창업자와 소상공인들을 위한 세미나가 준비 되어있다. 통불컴퍼니 최상대 대표의 ‘배달창업 성공비책’ 강연을 통해 배달창업을 준비하거나 기존 외식업을 하고 있는 소상공인은 배달에 대한 통찰력을 얻을 수 있다.

‘빅데이터를 활용한 창업자의 점포마케팅전략’을 주제로 조선이공대학교 프랜차이즈창업경영과 조계범 교수가 예비창업자와 소상공인을 만난다. 점포마케팅의 성공을 위한 빅데이터 활용법과 매출활성화를 위한 점포마케팅 전략을 짚어준다. 또한 코로나19로 인한 소비 패턴의 변화에서 생존전략을 이야기한다.

카페창업 및 홈카페에 관심이 많은 사람들을 위한 클래스도 준비되어 있다. 유기농커피를 고집스럽게 유통하는 썬빌인사이드가 준비하는 커피클래스는 제일창업박람회의 인기 클래스로 3회째 이어지고 있다. 1부에는 전세계 커피농장 중 세 곳에 대한 이야기와 원두 유통에 대한 정보를 알려준다. 2부에는 시럽을 이용한 나만의 레시피 만들기 강의가 진행된다. 또한 현장에서 드립 체험도 가능하며, 클래스 신청 시 원두3종과 드립용 미니포트를 사은품으로 제공한다.

‘안전한 박람회’를 위해 마스크 착용은 필수이고 각종 방역 수칙을 철저하게 안내할 예정이다. “6월 세텍에서 개최된 ‘제일창업박람회 in 서울’도 안전하게 진행한 경험을 바탕으로 빛고을 광주에서도 안전한 박람회를 계속 이어갈 것”이라고 관계자는 전했다.

이번 박람회는 제일좋은전람 홈페이지를 통해 진행되고 있는 ''사전등록''을 통해 5,000명 한정으로 무료입장이 가능하며, 회원가입 시 1년간 전국에서 진행되는 제일 창업박람회에 무료초대 된다.

또한 홈페이지에서는 참가기업, 최신창업 정보와 소상공인 지원정보를 안내하고 있다. 박람회 관련 문의나 신청은 제일좋은전람을 통해 가능하다.

출처 : 더퍼스트미디어(http://www.thefirstmedia.net)','관리자',to_date('20/08/17','RR/MM/DD'),3,59,0,0,'imgUpload\2020\08\20\s_b8194023-b92f-4e1e-aac3-bafbd76c2c4a_hall-1489768_1920.jpg','imgUpload\2020\08\20\b8194023-b92f-4e1e-aac3-bafbd76c2c4a_hall-1489768_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (62,'문화 공감 - 직장인 극단, 초여름 대학로 점령','올해로 34회째를 맞이한 ''근로자 연극제''는 

해를 거듭할수록 뛰어난 실력을 가진 

직장인 극단들의 참여가 이어지고 있는데요.

 

올해는 역대 최대인 37개 직장인 극단이 참여했습니다. 

  

프로 못지않은 실력을 보여주고 있는 직장인 극단들.

그들의 열정이 대학로를 달구고 있습니다.

  

문화공감 윤정원입니다. ','관리자',to_date('20/08/17','RR/MM/DD'),2,61,0,0,'imgUpload\2020\08\20\s_a6d55639-5622-4ccb-9460-74e354efd6a1_book-731199_1920.jpg','imgUpload\2020\08\20\a6d55639-5622-4ccb-9460-74e354efd6a1_book-731199_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (64,'오산시의회, 4차산업의 변화와 이해를 위한 특강 실시','이날 강사로는 델 테크롤로지(DELL Technologies) 스마트사업팀에서 근무하고 있는 최귀남 전무가 초빙되어 미래사회를 좌우하는 4차산업 혁명 시대의 변화는 어떻게 진행되고 있으며 이에 따른 행정환경 변화에 공공부분은 어떻게 대처할 것인지 등에 대해 활용사례를 중심으로 강의가 진행됐다.

특히 참석자들은 현대 도시가 안고 있는 환경, 교통 그리고 주거 등 사회문제를 해결하고 도시의 지속 가능한 발전을 위하여 디지털 혁신기술을 활용한 스마트시티에 주목했으며, 오산시에 맞는 스마트시티 환경조성은 어떻게 만들어 가야 하는지에 대해 고민할 수 있는 뜻깊은 자리였다고 말했다.

장인수 의장은 “현재의 디지털 환경 변화를 이해하고 이를 공공분야에서 활용하고 있는 사례를 통해 우리 시에서도 선도적으로 시민 생활과 밀접한 분야에 이를 활용할 수 있음을 알 수 있는 의미 있는 시간이었다”고 말했으며, 앞으로 오산시 의회는 4차산업의 혁신기술을 공공분야에 잘 활용하여 시민의 삶의 질을 높이고 안전한 오산시를 만드는데 지속적으로 노력할 예정이라고 밝혔다.

이번 아카데미는 코로나19 예방을 위하여 소독 등 사전방역조치 완료 후 최소 필요 인원이 참여한 가운데 진행됐다.

출처 : 이뉴스투데이(http://www.enewstoday.co.kr)','관리자',to_date('20/08/17','RR/MM/DD'),8,63,0,0,'imgUpload\2020\08\20\s_aae34be2-c08e-4cd0-a78e-79d3ce4f489d_entrepreneur-1340649_1920.jpg','imgUpload\2020\08\20\aae34be2-c08e-4cd0-a78e-79d3ce4f489d_entrepreneur-1340649_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (66,'전남도교육청, ''4차 산업혁명 창의융합 직업교육''','라남도교육청(교육감 장석웅)이 4차 산업혁명시대에 대비한 인재양성을 위해 유관 기관·대학과 협력해 창의융합 직업교육을 강화하고 나섰다.

전라남도교육청은 전남창조경제혁신센터, 순천대학교, 광주산학융합원과 협력해 금융빅데이터 과정인 핀테크(fitech), 자율자동차 과정인 e-모빌리티, 첨단 농업기술교육인 미래영농인과정을 8월부터 본격 운영한다고 10일 밝혔다.

전남교육청, 4차 산업혁명 시대 창의융합 직업교육 운영 
핀테크(fitech)과정은 상업계고 학생들을 대상으로 전남창조경제혁신센터와 연계해 지난 8월 8일부터 10월까지 목포(목포여상고)와 순천(순천청암고) 지역에서 각 20명의 학생이 참여한 가운데 열린다. 이 과정에서는 핀테크 서비스 개발을 위한 파이썬 프로그래밍, 빅데이터 AI활용, 금융권 블록체인, 빅데이터 분석 및 이해 등을 교육한다.

e-모빌리리과정은 공업계고 학생 20명을 대상으로 8월 13일부터 나주중흥골드스파에서 광주산학융합원과 연계해 운영되며, e-모빌리티 개요, 자율주행, 메이커톤 등에 대해 집중적으로 교육한다.

전남교육청, 4차 산업혁명 시대 창의융합 직업교육 운영 
미래Young農人과정은 지난 6월부터 순천대학교 농업교육과와 연계해 농업계고 학생 20명을 대상으로 시작됐으며, 8월 중 집중교육을 실시한다. 이 과정에서는 농업환경서비스, 농업생산시설제어, 농공응용, 융복합농기업, 농축산물가공 분야로 나눠 첨단기술을 익히고 실습을 하게 된다.

이현희 미래인재과장은 “취업을 목적으로 하는 직업계고 학생들에게 4차산업혁명 시대에 급격하게 다가오고 있는 첨단기술과 인공지능(AI)을 학습할 수 있도록 기회를 제공함으로써 전남의 아이들이 미래 전문직업 인재로 성장하도록 돕겠다”고 말했다.

출처 : 뉴스워커(http://www.newsworker.co.kr)','관리자',to_date('20/08/17','RR/MM/DD'),44,65,0,0,'imgUpload\2020\08\20\s_e4ea38bb-931c-426b-a002-a3e2348523aa_lecture-3986809_1920.jpg','imgUpload\2020\08\20\e4ea38bb-931c-426b-a002-a3e2348523aa_lecture-3986809_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (68,'세종시 제1회 빅데이터 분석과제 발굴 공모전','세종특별자치시(시장 이춘희)가 데이터에 기반한 과학적 행정 및 스마트시트 조성을 위해 시민이 직접 빅데이터 활용 아이디어를 제안하는 ‘제1회 빅데이터 분석과제 발굴 아이디어 공모전’을 개최한다.

이번 공모전은 도시의 문제 발굴과 해결 과정에 시민이 참여하는 프로세스를 구축하기 위한 것으로, 오는 10월 5일 18시까지 이메일(abigcity@korea.kr)을 통해 접수 받는다.

공모주제는 정책개선, 도시문제, 스마트서비스 등 제한 없이 자유롭게 선택할 수 있으며, 응모는 전 국민 누구나 개인 또는 팀 단위로 참가가 가능하다.

심사는 1차 서면평가(블라인드)에서 10팀을 선정하고, 2차 현장 발표평가에서 중요도, 활용성, 효과성, 파급성 등을 평가한 최종점수로 최우수 1팀, 우수 2팀, 장려 3팀을 선발한다.

시는 이번 대회에서 선정된 사례를 고도화해 실제 정책에 활용이 가능하도록 시스템 구축·분석에 활용하고, 빅데이터 전문 기관의 공모 사업에 의뢰할 계획이다.

장민주 스마트도시과장은 “이번 공모전은 시민들의 스마트한 아이디어가 데이터 분석을 통해 정책으로 반영되는 프로세스를 구축하는 세종형 데이터 거버넌스 구축의 첫 단추가 될 것”이라며 “전국에 있는 빅데이터 인재들의 많은 참여를 바란다”고 말했다.

저작권자 ? 불교공뉴스 무단전재 및 재배포 금지



출처 : 불교공뉴스(http://www.bzeronews.com)','관리자',to_date('20/08/17','RR/MM/DD'),11,67,0,0,'imgUpload\2020\08\20\s_96da0b21-b5c9-447f-b9b8-fe3691872a4b_hall-1489768_1920.jpg','imgUpload\2020\08\20\96da0b21-b5c9-447f-b9b8-fe3691872a4b_hall-1489768_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (70,'KT, 인공지능 연합체 ''AI 스터디위크'' 개최  ','KT는 산학연 인공지능(AI) 협력체인 AI 원팀이 이달 21일까지 ''AI 스터디 위크''를 열고 AI/DT(Digital Transformation)에 대한 온라인 학습 영상 콘텐츠를 제공한다고 10일 밝혔다.

AI 원팀은 AI 인재양성과 산업 간 협업 강화, 개방형 생태계 조성 등 ''대한민국 AI 1등 국가''를 목표로 올해 2월 출범했다. 한양대, 한국과학기술원(KAIST), 한국전자통신연구원(ETRI), 현대중공업그룹, LG전자, LG유플러스, 한국투자증권, KT가 협업하고 있다.

이번 온라인 콘텐츠 제공은 AI 인재양성의 첫 단계로서 AI 저변 확대를 위한 사업이다.

AI 원팀은 "4차 산업혁명 시대 국내 AI 전문인력 양성이 시급한 가운데 더 많은 사람이 AI에 대한 식견을 키우는 것도 중요하다"며 "AI 교육 수요 측면에서도 초급 교육에 대한 수요가 가장 많다"고 설명했다.

제공되는 콘텐츠로는 KT 제작 콘텐츠, 비대면 라이브 세미나, 외부 우수 공개 콘텐츠, AI 원팀 자체 제작 영상 등이 있다.

AI 원팀은 앞으로도 관련 콘텐츠를 꾸준히 제공하고 장기적으로 자체 교육 프로그램을 국내 생태계 전반으로 확대해갈 계획이다.

AI 원팀 사무국은 "더 많은 사람이 AI에 관심을 갖고 이해하는 것이 AI 1등 국가로 가는 원동력이라 생각하고 AI 원팀이 앞장서겠다"고 말했다.

AI 스터디 위크 영상 콘텐츠는 KT 홍보실 블로그 ''광화문2번출구''와 AI 원팀 홈페이지에서 확인할 수 있다.



[출처: 부산일보] http://www.busan.com/view/busan/view.php?code=2020081014545106086','관리자',to_date('20/08/17','RR/MM/DD'),33,69,0,0,'imgUpload\2020\08\20\s_428c00a2-5782-433c-bafc-c09a3ef65a51_student-849826_1920.jpg','imgUpload\2020\08\20\428c00a2-5782-433c-bafc-c09a3ef65a51_student-849826_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (72,'LINC+사업단, TPDM 트랙 설명회와 구글&카카오 특강 개최','세종대학교(총장 배덕효) LINC+ 사업단이 오는 20일 세종대 광개토관 629호에서 ‘관광플랫폼 D&M(TPDM) 트랙 설명회와 구글&카카오 특강’을 진행한다.

이번 특강은 오프라인뿐만 아니라 온라인으로도 진행하며, 오프라인 특강은 코로나19 방역 지침을 준수해 진행된다.

TPDM 트랙은 ‘Tourism Platform Design & Marketing Track’의 약자로 2020년 2학기부터 처음 시행되는 신규 교육과정이다. TPDM 설명회를 통해 TPDM 교육과정을 통한 역량 개발의 중요성과 학생들의 궁금한 사항을 안내하게 된다.

이번 행사에서는 구글과 카카오의 기업 특강도 진행된다. 구글에서는 구글 온라인 파트너십 그룹 부장이 특강을 맡았다. 구글 특강은 ‘디지털 마케팅과 빅데이터 분석 트렌드’에 관한 내용이다.

카카오는 카카오모빌리티 디지털경제연구소장이 ‘모빌리티 빅데이터로 보는 코로나 시대 생활의 변화’라는 내용으로 특강을 진행한다.

온라인 특강에 참여하려면 별도의 신청 없이 특강 당일에 웹엑스 URL(https://sejong.webex.com/meet/jaemun.byun)을 통해 참여할 수 있다. 시간은 오후 1시 30분부터 실시간으로 진행된다.

기타 문의사항은 LINC+ 사업단 TPDM트랙(02-6935-2742)로 문의하면 된다.

출처 : 교수신문(http://www.kyosu.net)','관리자',to_date('20/08/17','RR/MM/DD'),50,71,0,0,'imgUpload\2020\08\20\s_bfc35734-fe6f-40ef-9d71-ca73a343b7bc_conference-room-768441_1920.jpg','imgUpload\2020\08\20\bfc35734-fe6f-40ef-9d71-ca73a343b7bc_conference-room-768441_1920.jpg');
REM INSERTING into ATEAM.FRIEND
SET DEFINE OFF;
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('이윤하','김은혜','a1','취업준비생');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('이윤하','임수빈','subin','직장인');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('이윤하1','임수빈','subin','직장인');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('2','쇼닝','msun@naver.com','고시생');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('이윤하','정민영','c1@naver.com','대학생');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('관리자','성공대입','uni@naver.com','초·중·고등학생');
REM INSERTING into ATEAM.MEMBERS
SET DEFINE OFF;
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('a1@naver.com','김은혜','1234','취업준비생',to_date('20/07/29','RR/MM/DD'),'n','n',2);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('a@naver.com','이윤하','0000','취업준비생',to_date('20/07/29','RR/MM/DD'),'n','n',3);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('33@naver.com','2','2','거',to_date('20/08/12','RR/MM/DD'),'n','n',7);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('dd@naver.com','취업가자아으','0000','취업준비생',to_date('20/08/18','RR/MM/DD'),'n','n',54);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('admin','관리자','0000','관리자',to_date('20/08/13','RR/MM/DD'),'y','n',21);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('msun@naver.com','쇼닝','Aa1111','고시생',to_date('20/08/13','RR/MM/DD'),'n','학생',22);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('wingkar','오현진','0000','취업준비생',to_date('20/08/13','RR/MM/DD'),'n','학생',23);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('2929@naver.com','하하','0000','고등학생',to_date('20/08/17','RR/MM/DD'),'n','n',41);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('c1@naver.com','정민영','0000','대학생',to_date('20/08/17','RR/MM/DD'),'n','n',43);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('subin@naver.com','임수빈','0000','직장인',to_date('20/08/17','RR/MM/DD'),'n','n',44);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('aa@naver.com','성공할거야','0000','취업준비생',to_date('20/08/17','RR/MM/DD'),'n','n',46);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('bb@naver.com','취업꿈나무','0000','대학생',to_date('20/08/17','RR/MM/DD'),'n','n',47);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('cc@naver.com','탈출백','0000','기타',to_date('20/08/17','RR/MM/DD'),'n','n',48);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('hong@naver.com','숀맘','0000','기타',to_date('20/08/17','RR/MM/DD'),'n','n',49);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('sun@naver.com','썬','0000','초·중·고등학생',to_date('20/08/17','RR/MM/DD'),'n','n',50);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('sky@naver.com','하늘','0000','초·중·고등학생',to_date('20/08/17','RR/MM/DD'),'n','n',51);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('uni@naver.com','성공대입','0000','초·중·고등학생',to_date('20/08/17','RR/MM/DD'),'n','n',52);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('cream@naver.com','크림크','0000','초·중·고등학생',to_date('20/06/17','RR/MM/DD'),'n','n',53);
REM INSERTING into ATEAM.MYLIST
SET DEFINE OFF;
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[취준생]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','관리자',to_date('20/08/17','RR/MM/DD'),0,null,null,'job',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[고시]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','관리자',to_date('20/08/17','RR/MM/DD'),0,null,null,'go',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (11,'[직장인]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','2',to_date('20/08/15','RR/MM/DD'),0,null,null,'emp',1);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (6,'[기타]카테고리의 커뮤니티 입니다.','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
- GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을 금지합니다.
만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.','2',to_date('20/08/15','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'OOOOO 인사팀 1차 면접 결과 받으신 분?','인사팀 1차 면접 결과 받으신 분?','탈출백',to_date('20/08/17','RR/MM/DD'),0,null,null,'job',2);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'군무원 vs 직업군인 차이점','1. 군무원
군무원은 군부대에서 군인과 함꼐 근무하는 특정직 공무원 입니다.
과거 군무원은 현역인력을 보완하는 보조 인력이었ㅎ다면
현대에 와서는 어려운 업무의 전문성, 지속성을 가진 공무원으로서 업무에 투입됩니다.

2.직업군인
직업군인은 지휘관으로서 일반병사를 지휘 통솔하거나 혹은 참모로서 지휘관을 보좌하여 정보, 작전, 인사, 군수 등 전문 업무를 수행합니다.
외부의 모든 군사적 위협으로부터 국가를 보위하고 전쟁을 억제하며 군사적 긴장을 완화시켜 평화를 지키는 일을 합니다.

3. 군무원이 하는 일
군무원은 국방부, 육군, 해군, 공군의 기관 내에서 정보관리사무, 행정, 군 지원 업무 등을 담당하게 됩니다.
또한, 건축, 전자, 토목 등 즥렬별로 다양한 업무를 담당하게 됩니다.

4.직업군인이 하ㅣ는 일
일반병사 지휘통솔, 정보, 작전, 인사, 군수 등 전문 업무를 수행합니다.
또한, 중요시설에 대한 경계, 국가기간산업의 보호, 환경보호 활동 지원, 지역개발 지원, 구난, 구조 등 평화유지 활동, 해양수송로 보호 등의 일을 합니다.','성공할거야',to_date('20/08/17','RR/MM/DD'),0,null,null,'go',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/17','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/17','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'드디어 백수생활 끝났습니다','면접보러가서 긴장하고 대답도 못했는데 다음주에 합격했다고 연락이 왔습니다ㅠㅠ
드디어 백수 탈출했습니다.
처우는 오히려 전 회사보다 좋습니다 연봉은 비슷하나 성과금, 인센티브 별도라네요
정말 행복합니다.
저 같은 놈도 취업 성공했습니다. GOOD PARTNER회원님들도 할 수 있으니 좀 만 더 화이팅 하시면 좋을 곳 가실 겁니다 화이팅!!!!!!!!!!!!','쇼닝',to_date('20/08/18','RR/MM/DD'),0,null,null,'job',2);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'사회생활 힘드신 분들을 위해 성공하는 법 네가지 알려드립니다.','1. 사회적 계층으로 봤을때 윗사람에게 의지하라

2. 정치를 하지 않으려면 두루두루 친해라.

3. 내 허물을 줄일 생각을 하기 보다 타임의 허물을 보아도 지나치는 관용있는 사람이 되라.

4. 약하다고 생각하는 사람을 밟거나 강요해서 이득을 취할생각은 절대 하지 마라.

이상 제가 겪은 바 혹시나 인간관계에 힘드신 분들을 위해 적어봤습니다.
편안한 저녁되세요^^','쇼닝',to_date('20/08/18','RR/MM/DD'),0,null,null,'emp',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (25,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (26,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (27,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (28,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/18','RR/MM/DD'),0,'경영학 연습.JPG','/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (29,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (30,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (31,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (32,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/18','RR/MM/DD'),0,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (34,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (35,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (36,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (37,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (38,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (39,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (40,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (41,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (42,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (43,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (45,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (46,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (47,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (48,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (49,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (50,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (51,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (52,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (53,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (54,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (56,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (57,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (58,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (59,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (60,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (73,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (74,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (75,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (76,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (78,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (79,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (80,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (81,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (82,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (83,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (84,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (85,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (86,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (87,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (89,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (90,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (91,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (92,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (93,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (94,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (95,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (96,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (97,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (98,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (100,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (101,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (102,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (103,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (104,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (105,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (106,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (107,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (108,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (109,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (111,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (112,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (113,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (114,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (115,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (116,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (117,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (118,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (119,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (120,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (122,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (123,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (124,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (125,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (126,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (127,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (128,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (129,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (130,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (131,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (133,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (134,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (135,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (136,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (137,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (138,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (139,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (140,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (141,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (142,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (144,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (145,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (146,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (147,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (148,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (149,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (150,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (151,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (152,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (153,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (155,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (156,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (157,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (158,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (159,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (160,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (161,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (162,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (163,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (164,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (166,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (167,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (168,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (169,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (170,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (171,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (172,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (173,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (174,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (175,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (176,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (177,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (178,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (179,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (180,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (181,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (182,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (183,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (184,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (185,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (187,'취업 VS 편입','요새 다들 취업 되시나요 특히 패션업종이요..
제나이 24살인데 그냥 내년이라도 편입할까요
정말 미치겠네요 학력때문에 취업이 안되는거일까요','하늘',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (188,'전문대 2학년 한테 진심어린 조언 부탁드립니다','고등학교 3학년 부터 공기업 준비하다가 필기에서 수십번 떨어졌습니다.
그리고 얼마전 대기업 인적성에서도 떨어졌습니다.
막연히 꿈도 없이 열심히 공부해서 좋은 곳에 취업하자라는 마인드로 전문대에 왔습니다.
근본적으로 제가 어떤길을 가는게 옳은것인지 잘 모르겠어요.
주변사람들의 막여한 추천으로 공기업을 가자고 하니, 고등학교 3학년 때부터 수십번 떨어져온 ncs를 다시 해야 할 생각에 정말 큰 거부감이 듭니다.
어디에라도 이 고민을 적고싶어서 중구난방하게 적어 봤습니다.
회원님들 각자의 생각을 있는 그대로 저에게 전달 해주세요....','성공할거야',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (189,'공대 엇학기 해보신분 계신가요?','2학년 2학기를 엇학기로 다녔습니다.

이번년도에 2학년 1학기를 끝내서 현재 2학년은 마친 상태인데 3학년 2학기를 또 엇학기로 할지 고민입니다.

만약 휴학을 하게 되면 어떤걸 하는게 효율적 일까요?
휴학을 한다면 토익, 편입정도 생각만 하고 있습니다 많은 조언 부탁드립니다.','취업꿈나무',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (190,'대학생 3학년 이런저런 고민입니다.','이제 3학년 2학기를 앞두고 있는 여학생입니다
취업을 생각해야하는데 뭘 어떻게 시작해야할지 모르겠어요
스펙이라 할만한 것도 없고..지금 토익학원 다니는데 가장 기초반 다니고 있습니다.

학점은 3.4정도라 내세우지도 못합니다

관광과를 다니고 있는데 지금 시국에 전공을 살려 취업하기엔 어려움이 크구요....
편입을 생각하고 있는데 아무런 정보도 없으니 이 또한 막막하네요

휴학을하고 뭘 할지 찾아봐야할지 그냥 바로 졸업해야하는건지도 고민됩니다. 이 시기에 어떤 선택을 해야할까요..?조언 부탁드립니다..','크림크',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (191,'일반 편입 해보신분들 조언 부탁드립니다','전문대졸 후 직장다니다가 원하는 기업 이직목표로 일반 편입을 생각중입니다.
다름이 아니고 제가 편입하고자 하는 학교의 편입기준이 공인어학성적 6:면접4의 비율이던데요
공인어학성적을 토익으로 준비한다는 가정을 했을때 기준은 500점 이상이던데
합격순서는 토익점수가 높은 순서인지 아니면 기준 이상만 됐을때 면접으로 합격을 하는지 궁금합니다.','성공대입',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (192,'[새책]경영학연습 (판매완료)','정가 48000
판매가 40000(택배착불)

오랜시간 취업준비하면서 이 책, 저 책 사느라 돈 참 많이 썼습니다.
원론서처럼 한두권 중요한거 사두고 달달외워 득파하자 생각으로 취업 끝물에 이 책을 샀고
사자마자 바로 취업에 성공했습니다 책에 좋은 기운이 있었는지 모르지만 이 책을 사시는 분도 꼭 좋은 일이 생기실 겁니다.

-사용감 전혀없음. 한번도 꺾어서 펼쳐보지 않았습니다.
-원론서로 좋은 책 중간에 문제&해설이 나와있어 이론 공부 후 예제까지 적용돼서 좋습니다.

쪽지 및 댓글 달아주세요~','썬',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_경영학 연습.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (193,'4학년 1학기 마치고 1년 휴학 질문입니다.','올해 인서울 전기공학과로 편입한 3학년 입니다.

하필 편입하고나서 코로나가 터져서 1학기는 물론 2학기도 비대면이 확정되어서 올해는 학교생활을 못하게 됐습니다
그래서 생각해본게 4학년 1학기까지 학교를 다니고 1년 휴학을 할까 생각중입니다.
왜냐면 이때까지 다니고 휴학기간동안 기사자격증과 토익 오픽을 최소한 따내려 하고 있습니다.
내년에도 학교생활을 못해보고 졸업하면 뭔가 슬프고 억울할 것 같아서 휴학이라도 해 한학기만이라도 제대로 된 학교생활을 즐기고 싶어서 고민중입니다.

4-1마치고 1년 휴학 괜찮을까요?','숀맘',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (194,'답답한 마음에 글을 씁니다..','무려 5년이 넘게 지난 때에 요 리사라는 직업에 대한 회의감에 빠져서 4년 가까이 다니던 회사를 그만두고 6개월은 메뉴개발팀, 나머지 1개월씩은 아르바이트하며 방황중이에요....
지금 정말 말 그대로 무인도에 표류하는 기분입니다.
이제는 정말 돈도 다 떨어지고 코로나라서 그런지 단기알바도 안구해지고 장기 알바는 나이때문에 취업할거라 생각하는지 뽑아주지도 않습니다..
전 어떻게 살아가야될까요 누구라도 조언 부탁드려요..','취업꿈나무',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (195,'자소서 얼마나 잘써야 되는 건가요','너무 구구절절 써도 안될거 같고 심플하게 써도 안될거가구
이제 전문대졸이라 딱히 절 드러낼만한게 없는데..','성공할거야',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (196,'ssafy에 대해 알고 계신가요?','5기 모집이 슬슬 다가오고 있는 것 같은데 모르시는 분들을 위해 SSFAY를 소개드리려 합니다
지원대상은 국내외 4년제 대학 졸업자 또는 8월졸업예정자 중 만 29세 이하 미취업자입니다.
SSAFY 교육기간은 1년간 진행되며
SSAFY 교육 장소는 서울, 대전, 광주, 구미에서 진행됩니다!
아래 SSAFY 4기 모집공고와 함께 자세히 살펴볼까요~','크크크',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'카테고리 기타에 글쓰기 테스트','테스트입니다.','오현진',to_date('20/08/19','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (283,'공지사항입니다','공지','관리자',to_date('20/08/21','RR/MM/DD'),0,null,null,'sc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'직장인 글 테스트입니다','직장인 글 테스트','오현진',to_date('20/08/19','RR/MM/DD'),0,null,null,'emp',0);
REM INSERTING into ATEAM.NOTICE
SET DEFINE OFF;
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('닉네임과 카테고리에 대한 관련 공지','안녕하세요 Smart patner 운영자입니다.

최근들어 어플 이용자가 많아지면서 

의도적으로 상대방을 기분나쁘게 하는 닉네임들이
많아졌고, 이에 따라 많은 분들이 불편해하고 피해를 입고 있습니다. 뿐만아니라 본인 카테고리가 
아닌 곳에 가서 사람들을 조롱하거나 선정적인 게시물들을 올리는 문제도 많습니다.

8월중에 커뮤니티 리뉴얼 작업을 통해 이 문제들을 해결하고자 했지만, 개편될때까지 계속해서 문제가 이어질것 같아서 우선적으로 카테고리 변경 제한기능을 추가합니다.

2020년 8월1일 부터 카테고리 변경은 주 1회 혹은 월1회로 제한합니다.

Smart Partner 드림','20.08.09','admin');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('사전 및 ASMR 추가에 대한 공지','안녕하세요 Smart Partner 운영자입니다.

최근들어 어플 사용자가 많아짐에 따라 여러가지 사전과 ASMR을 추가해달라는 문의가 많아지고 있습니다.

저희도 현재 사전 및 ASMR 음악 추가에 대해 확인하고 있으며, 추후 추가시 공지로 알려드리겠습니다.

Smart Partner 드림','20.08.09','admin');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('1.1.1 업데이트','.','20.08.21','관리자');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('1.1.3업데이트','.','20.08.21','관리자');
REM INSERTING into ATEAM.OPINION
SET DEFINE OFF;
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (110,'[쇼닝]님 ID변경을 하고 싶은데 가능한가요? 에 대한 답변드립니다.','안녕하세요 쇼닝님

GOOD PARTNER 관리자 입니다.

한번 가입된 아이디(ID)는 변경이 불가능합니다.

아이디(ID)를 변경하시려면 GOOD PARTNER인터넷 사이트의 
회원 탈퇴 후 다시 [회원 가입] 을 하셔야 합니다. 

닉네임과 비밀번호 변경은 오른쪽 상단메뉴인 내정보에서 가능하신 점 참고 부탁드립니다.

감사합니다^^
','관리자',to_date('20/08/17','RR/MM/DD'),5,null,null,107,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (108,'ID변경을 하고 싶은데 가능한가요?','ID변경은 안되는건가요?','쇼닝',to_date('20/08/17','RR/MM/DD'),5,null,null,107,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (112,'회원가입을 한 개인정보는 안전하게 보호되나요?','안전하게 잘 보호 되는 거 맞죠?','하하',to_date('20/08/17','RR/MM/DD'),3,null,null,111,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (114,'[하하]님 회원가입을 한 개인정보는 안전하게 보호되나요? 에 대한 답변드립니다.','안녕하세요 하하님

GOOD PARTNER 관리자 입니다.

GOOD PARTNER 사이트의 모든 회원정보는 
GOOD PARTNER의 통합회원 정책에 의하여 보관되며 절대 다른 곳으로
유출되지 않습니다. 

또한, 회원님의 사이트 이용 목적 이외의 다른 목적으로 사용되지
않습니다.

회원가입 시 또는 사이트 이용 중에 회원님께서 입력하신 모든
정보는 "정보통신망이용촉진 및 정보보호 등에 관한 법률"을
준수하여 안전하게 관리됩니다. 

회원탈퇴 시에는 재생불가능한 기술적 방법을 사용하여 회원님의
모든 개인정보를 파기하고 있으며 다시 복구되지 않습니다.

더욱 자세한 사항은GOOD PARTNER 사이트의 약관 및 개인정보
보호정책을  참고하시기 바랍니다.

GOOD PARTNER 사이트는 안전한 회원정보 관리를 위해 항상 노력하고 있습니다.

* 회원 본인의 잘못으로 인한 개인정보의 유출 및 이용은 저희가 책임을
지지 않으니 회원 본인 스스로 개인정보보호에 주의하셔야 합니다.

감사합니다^^','관리자',to_date('20/08/17','RR/MM/DD'),3,null,null,111,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (118,'익스플로러11로 로그인이 안되고 크롬은 동영상 실행이 안되네요','	
익스플로러 11로 업데이트 했는데도 로그인만 하라는 팝업창이 계속 떠서

크롬으로 실행했는데 동영상 시청이 먹통이네요.

어떻게 해야 하나요?','성공할거야',to_date('20/08/17','RR/MM/DD'),4,null,null,117,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (120,'[성공할거야]님 익스플로러11로 로그인이 안되고 크롬은 훈련동영상 실행이 안되네요 에 대한 답변 드립니다.','안녕하세요 성공할거야님

GOOD PARTNER 관리자 입니다.

8월 17일 오전, 동영상 파일이 교체 되면서 원활하게 재생이 되지 않았던 것으로 생각됩니다
다른 이유로 동영상이 특정구간에서 멈추는 현상이 있는지는 파악중에 있습니다.

서비스 이용에 불편을 드린점 죄송합니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),2,null,null,117,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (122,'회원정보의 닉네임을 잘못 입력했습니다','수정은 어디서 하나요?','취업꿈나무',to_date('20/08/17','RR/MM/DD'),5,null,null,121,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (124,'[취업꿈나무]님 회원정보의 닉네임을 잘못 입력했습니다 에 대한 답변 드립니다.','안녕하세요 취업꿈나무님

GOOD PARTNER 관리자 입니다.

닉네임을 변경하시려면 오른쪽 상단메뉴인 내정보에서 가능하신 점 참고 부탁드립니다.

감사합니다^^
','관리자',to_date('20/08/17','RR/MM/DD'),1,null,null,121,2,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (126,'첨부파일 오류','첨부파일이 안올라가요?','탈출백',to_date('20/08/17','RR/MM/DD'),11,null,null,125,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (128,'[탈출백]님 첨부파일 오류 에 대한 답변 드립니다.','안녕하세요 탈출백님

GOOD PARTNER 관리자 입니다.

홈페이지 사용에 불편을 드려 죄송합니다.
문의주신 내용에 대해서 말씀드리자면, 첨부해주시려는 증빙서류상에 개인정보가 포함되어 있어 오류가 발생하고 있는것 같습니다.

첨부하시려는 증빙서류 PDF파일 또는 hwp파일을 스크린샷을 찍으신 후
그림판 등을 이용해서 개인정보(주민등록번호, 사업자등록번호, 카드번호, 계좌번호 등) 개인정보에 해당되는 부분을 지워주신 뒤 이미지로 저장해 주신다음 파일첨부를 다시 진행해봐 주신다면 정상적으로 홈페이지 수강신청이 이루어 지실 것 같습니다.

1. pdf파일을 스크린샷 촬영
2. 그림판으로 스크린샷 내용의 개인정보부분을 지우기
3. 이미지 파일로 저장

위의방법으로 한번 다시 진행해 봐 주시기 바랍니다.
감사합니다^^','관리자',to_date('20/08/17','RR/MM/DD'),5,null,null,125,4,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (150,'답변드려요','.','관리자',to_date('20/08/21','RR/MM/DD'),0,null,null,125,1,1);
REM INSERTING into ATEAM.PRESS
SET DEFINE OFF;
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (49,'토익, 이번에도 목표점수 달성 실패? 효율적인 고득점 방법은?','○ 유형별 문제풀이를 통해 약점 파악 
단기 토익 고득점 달성의 기본은 약점 파악이다. 토익의 출제경향은 매 시험마다 변하기 때문에 최신 기출의 트렌드를 파악하기 위해 기출 모의고사를 체계적으로 학습하는 것이 중요하다. 단기간에 점수를 끌어올리기 위해서는 그 중 취약한 파트를 집중적으로 공략해야 한다. 최다 오답이 나오는 유형과 파트를 파악하고 파트별 전략을 세우는 것이 중요하다. 
LC는 미국, 영국, 호주 등 각 영어권들의 발음이 모두 사용되므로 발음 자체가 들리지 않을 경우 끊임없는 쉐도잉 학습이 필요하다. 쉐도잉은 스크립트 없이 듣고 따라 쓰고 말하는 연습이다. RC는 시험에 주로 출제되는 표현을 파악하고 뒤의 파트에서 시간이 부족하지 않기 위한 철저한 시간분배가 중요하다. 
 

○ LC에 약하다면 시간분배, 키워드 공략과 쉐도잉 반복
LC를 어려워하는 학생들은 빠른 듣기 속도에 지문을 보지 못하고 급히 넘어가는 경우가 많다. LC는 속도 싸움이므로 빠르고 정확하게 이해하는 것이 관건이다. 파트1이 상대적으로 direction 시간이 가장 길어, 다른 파트의 문제나 보기를 볼 시간이 충분하다. 지문이 길고 까다로운 편에 속하는 파트3의 내용을 미리 읽어두면 시간을 절약할 수 있다. 이 때 모든 지문을 다 읽어두기에는 촉박하니, 중요한 키워드만 빠르게 파악하는 것이 중요하다.  

○ RC 빠르고 막무가내 암기 아닌 파트별 전략 세우기 필요
고득점을 목표로 한다면 파트7의 전략을 잘 세우는 것이 중요하다. 지문의 길이가 길고 본문의 표현을 다른 말로 바꾸어 표현하는 형태로 이루어져 지문의 정답을 찾기가 힘든 유형이다. 또한 시제를 구별해야 흐름이 이해되는 지문이 많아 시제를 구별해 함정에 빠지지 않는 연습을 해야 한다. 파트7은 지문 전제를 파악해야 문제를 풀 수 있기에 비교적 평범한 난이도의 다른 파트에서 시간을 줄이는 것이 관건이다. 

○ 쫓기는 시험 시간, 어떻게 활용해야 할까? 
시험 시작 후 시험 direction과 LC 파트1,2 direction이 나올 때, 듣고만 있는 것이 아니라 파트 3,4의 선지 키워드를 잡거나 파트5의 문제를 풀어주자. 토익은 시간싸움이라는 점을 기억하고 시간을 효과적으로 활용하는 연습을 해야 한다. 
비슷한 맥락에서 LC가 끝난 직후가 가장 집중력이 좋을 때이므로 복잡한 파트 순으로 RC를 풀어나가는 것도 하나의 방법이다. 시험 종료시간이 다가올 때 파트7의 긴 지문들이 남아있으면 멘탈이 흔들릴 수 있어 풀 수 있는 문제도 읽히지 않아 풀지 못하는 경우가 있다. 반면 파트 5,6의 지문들은 한 문장만 독해하고 익혀둔 표현으로 푸는 문제이므로 직관적으로 답이 떨어져 많은 집중력을 요하지 않는다. 따라서 파트7을 먼저 해결하는 것이 고득점 달성에 더 효과적일 수 있다.  

다만, 이는 토익 유형의 문제를 많이 접해보지 못한 초보자에게는 효율적인 방법이 아닐 수 있다.

▶에듀동아 남혜선 인턴 기자 edudonga@donga.com','관리자',to_date('20/08/17','RR/MM/DD'),null,49,null,null,'imgUpload\2020\08\20\s_90fbc4b3-847c-43c9-bc98-e8a62aa15521_mistakes-1756958_1920.jpg','imgUpload\2020\08\20\90fbc4b3-847c-43c9-bc98-e8a62aa15521_mistakes-1756958_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (50,'[학과 Tip ] 인재를 키운다 ''한양대 에리카 ICT융합학부''','[EBS 저녁뉴스]

현대 사회에서는 단순히 한 분야에서 뛰어난 기량을 보이는 전문가뿐만 아니라, 서로 다른 분야의 지식을 연결해 새로운 기술을 창조할 수 있는 통섭형 인재에 대한 수요가 커지고 있습니다. 각 대학에서도 이에 맞춘 전공과 커리큘럼을 개발하려는 움직임이 확산되고 있는데요, 이러한 융합 학문을 배울 수 있는 곳, 오늘 학과팁 진로톡에서 한양대학교 에리카 ICT융합학부를 소개해드립니다.','관리자',to_date('20/08/17','RR/MM/DD'),null,50,null,null,'imgUpload\2020\08\20\s_5022499a-b934-4e9e-9652-81e54c468cbe_room-2775442_1920.jpg','imgUpload\2020\08\20\5022499a-b934-4e9e-9652-81e54c468cbe_room-2775442_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (45,'해양경찰청, 현장중심 전문가 경력자 14개 분야 166명 모집','해양경찰청은 현장 전문성 강화를 위해 정책홍보·해양기상·수사·헬기정비·구조 등 14개 분야 총 166명을 채용한다고 17일 밝혔다.

올해 실시하는 두 번째 정기 채용으로 분야별 전문가를 선발하는 경력경쟁채용으로 진행된다.

모집인원은 경위 직급의 경우 총 11명으로, 분야별로 정책소통 5명, 항공사업 1명, 해양기상 1명, 경비작전 2명, 구조 2명이다.

순경 직급은 총 155명을 채용하며 홍보 6명, 건축 2명, 수사 25명, 조선기술 5명, 헬기정비 25명, 정보통신 11명, 특임(구조) 66명, 특임(특공) 15명이다.

이번 채용에서 선발된 인원은 본청 및 지방청, 경비함정, 파출소, 항공대 등 부서에 배치돼 국민의 안전을 위해 임무를 수행하게 된다.

응시원서는 이달 27일까지 해양경찰 채용 누리집(http://gosi.kcg.go.kr)에서 접수가 가능하다.

분야별 최종합격자는 시험전형을 거쳐 12월 초에 발표될 예정이다.

지원 요건 등 기타 자세한 사항은 해양경찰청(www.kcg.go.kr) 및 나라일터(www.gojobs.go.kr), 해양경찰 채용 누리집(http://gosi.kcg.go.kr)에 게시된 공고문을 통해 확인할 수 있다.

출처 : 경북일보 - 굿데이 굿뉴스(http://www.kyongbuk.co.kr)','관리자',to_date('20/08/17','RR/MM/DD'),null,45,null,null,'imgUpload\2020\08\20\s_7ae0cc8d-7fe9-4eae-baac-7f2704062d9d_police-378255_1920.jpg','imgUpload\2020\08\20\7ae0cc8d-7fe9-4eae-baac-7f2704062d9d_police-378255_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (46,'[대학입시 포커스] 정시로 서울대까지','<대학입시 포커스> 시간입니다. 오늘은 정시로 서울대에 입학한 국승권 학생과 입시에 대해 알아보겠습니다.','관리자',to_date('20/08/17','RR/MM/DD'),null,46,null,null,'imgUpload\2020\08\20\s_6f60ecd2-ca0a-4333-9eb0-042379a76671_financial-2860753_1920.jpg','imgUpload\2020\08\20\6f60ecd2-ca0a-4333-9eb0-042379a76671_financial-2860753_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (43,'[대학입시 포커스]성균관대 합격 비법, ','[EBS 저녁뉴스]

이번에는 입시 정보를 수험생의 눈높이에 맞춰 전달하는 <대학입시 포커스> 시간입니다. 오늘은 학생부종합전형으로 성균관대에 입학한 김서희 학생과 함께 학생부 관리법과 자소서 작성에 관한 이야기 나눠보겠습니다. ','관리자',to_date('20/08/17','RR/MM/DD'),null,43,null,null,'imgUpload\2020\08\20\s_8c7cab91-85a7-4a6d-a692-3eaf13cc4e93_book-731199_1920.jpg','imgUpload\2020\08\20\8c7cab91-85a7-4a6d-a692-3eaf13cc4e93_book-731199_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (47,'[교육현장] 문 대통령 ''정시 비중 확대'' 지시‥교육계 반응은?','[EBS 한 주간 교육현장] 

용경빈 아나운서

문재인 대통령이 대학입시와 관련해 정시 확대 방안 마련을 지시했습니다. 이제 따른 교육계 반응과 향후 전망에 대해 한국교원단체총연합회 조성철 대변인와 짚어보겠습니다. ','관리자',to_date('20/08/17','RR/MM/DD'),null,47,null,null,'imgUpload\2020\08\20\s_a5057d76-5228-4eee-9576-a99645dd9580_lecture-3986809_1920.jpg','imgUpload\2020\08\20\a5057d76-5228-4eee-9576-a99645dd9580_lecture-3986809_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (48,'[김형일의 컨설팅] “대입은 전략이다!” 수시컨설팅-성균관대','◈ 성균관대 수시

올해 성균관대의 선발인원은 전년도와 큰 변화 없이 총 3,566명 모집에 수시에서 68.4%에 해당하는 2,438명을 선발하고, 정시에서 31.6%에 해당하는 1,128명을 선발한다. 수시 2,438명은 다시 학생부종합전형(계열모집)으로 655명, 학생부종합전형(학과모집)으로 915명, 논술전형으로 532명, 실기/실적전형으로 103명을 선발하고, 정시 1,128명은 ‘가’군에서 573명, ‘나’군에서 555명을 선발한다. 수시 학생부종합전형은 계열모집이든 학과모집이든 모두 수능최저학력기준이 없고, 추천서 제출이 없으며, 면접이 없이, 오로지 학생부와 자기소개서만으로 1,570명을 선발한다. 성균관대는 학생부교과전형 없이 학생부종합전형, 논술전형만으로 수시 합격자를 선발한다. 학생부종합전형은 수능최저학력기준이 없어 수능에 대한 부담 없이 지원할 수 있는데, 다시 계열모집과 학과모집 두 개의 전형으로 나뉜다. 이 둘은 전체 신입학정원의 44%를 차지하는, 성균관대의 핵심전형이라 할 수 있다. 두 전형은 중복지원을 허용하며, 각각 평가자가 다르기 때문에 동일한 자기소개서를 제출해도 문제되지 않는다. 또한 각 전형은 계열모집과 학과모집의 차이가 존재하지만 평가요소는 동일하여 성균관대 진학을 희망하는 학생은 중복지원을 통해 합격 가능성을 확대해 볼 수 있다. 

수시 학생부종합전형 ‘계열모집’

학생부종합전형(계열모집)은 인문과학계열, 사회과학계열, 자연과학계열, 공학계열 그리고 올해 신설된 글로벌융합학부로 나누어 총 655명을 선발한다. 선발방식은 학생부와 자기소개서를 활용한 서류 100%로 선발하며, 추천서 제출 없고, 면접 없으며, 수능최저학력기준도 없이 오로지 학생부교과, 학생부비교과, 자기소개서만으로 선발한다. 입학생은 교양기초교육을 이수한 후, 2학년 진급 시 모집단위에 설치된 학부/학과를 대상으로 본인의 희망과 1학년 학업성적에 따라 각 입학계열에 설치된 학부/학과에 진입한다.

수시 논술전형

올해 논술전형은 전년도와 같은 532명을 모집하는데, 논술 60%와 학생부 40%로 일괄합산하여 선발하며 수능최저학력기준이 있다. 40% 반영되는 학생부는 교과성적은 등급 간 점수 차가 적고, 비교과는 출석과 20시간 정도의 봉사시간을 확인하는 수준이라 변별력이 크지 않다. 실질적인 당락은 논술고사에서 결정된다. 논술은 수능 이후 실시되어 부담이 적다. 인문계는 국어와 사회의 통합교과형으로, 자연계는 수학 2문제와 과학(물I/화I/생I 중 선택)문제가 출제된다. 모집단위에 따라 고사일과 시간이 다르니 타 대학과 응시일이 겹치는 경우 전략적인 선택을 고려해 볼 수 있다.','관리자',to_date('20/08/17','RR/MM/DD'),null,48,null,null,'imgUpload\2020\08\20\s_49dd6323-248b-4887-abe4-714c09a1225e_convention-center-3908238_1920.jpg','imgUpload\2020\08\20\49dd6323-248b-4887-abe4-714c09a1225e_convention-center-3908238_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (51,'고등학교에 ''인공지능'' 과목 생긴다…이르면 내년 2학기부터','(세종=연합뉴스) 김수현 기자 = 이르면 내년 2학기부터 고등학생들이 학교에서 인공지능(AI) 과목을 배운다.

교육부는 2021학년도 신입생부터 고등학교 보통교과의 진로 선택 과목으로 ''인공지능 기초'', ''인공지능 수학''을 적용하는 내용을 담은 ''초·중등학교 교육과정'' 일부 개정안을 행정 예고했다고 17일 밝혔다.

공교육 과정에 인공지능 교과목이 도입되는 것은 이번이 처음이다.

고등학교 교과목은 보통 1학년생들이 듣는 ''공통 과목''과 2∼3학년생들이 진로, 흥미 등을 고려해 선택해 듣는 ''일반 선택 과목'', 좀 더 심화한 선택 과목인 ''진로 선택 과목''으로 나뉘는데, 인공지능 관련 과목은 2∼3학년들이 주로 듣는 진로 선택 과목 중 하나로 추가된다.

''인공지능 수학''은 인공지능 속에 담긴 수학적 원리에 초점을 맞춘 과목으로, 개정안은 고등학교 수학 과목 중 진로 선택 과목에 기존 ''기본 수학'', ''실용 수학, ''기하'', ''경제 수학'', ''수학과제 탐구'' 외에 ''인공지능 수학''을 추가하는 내용을 담았다.

''인공지능 기초''는 인공지능 자체의 원리를 이해하는 데 중점을 둔 과목으로, ''농업 생명 과학'', ''공학 일반'', ''창의 경영'', ''해양 문화와 기술'', ''가정과학'', ''지식 재산 일반'' 등과 함께 기술·가정 진로 선택 과목으로 새롭게 추가된다.

두 과목 모두 선택 과목이기 때문에 전체 학생이 배우는 것은 아니다.

각 학교는 학생들의 희망 여부를 조사해 과목 개설 여부를 결정한다.

교육부 관계자는 "인공지능 과목이 처음 도입되는 것이어서 반응이 어떻게 나타날지 궁금했는데, 교육과정 시안에 대한 공청회 반응이 괜찮았다"고 귀띔했다.

교육부는 이달 31일까지 행정예고에 대한 의견을 받는다.

행정예고 후 다음 달부터 교과서 출판사들이 교과서를 집필하고 교과서 심의 과정까지 보통 1년이 걸린다는 점을 고려하면 이르면 내년 2학기부터 인공지능 교과목이 도입될 전망이다.

이에 따라 현재 고등학교 1학년이 2학년이 되는 내년 2학기부터 인공지능 과목을 배울 수 있을 것으로 보인다.

내년 신입생인 1학년 학생들은 2학년으로 올라가는 2022년부터 인공지능 교과목을 들을 수 있을 전망이다.

교육부 관계자는 "처음 시도되는 인공지능 교육인만큼 과목 도입 후 반응과 결과를 꼼꼼히 모니터링하겠다"고 말했다.
','관리자',to_date('20/08/17','RR/MM/DD'),null,51,null,null,'imgUpload\2020\08\20\s_afd66956-2ec5-40e6-b656-d2b5243e47a0_math-work-4711302_1920.jpg','imgUpload\2020\08\20\afd66956-2ec5-40e6-b656-d2b5243e47a0_math-work-4711302_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (52,'[꿈을 job아라] 하늘을 달리는 ''드론레이서''','[EBS 저녁뉴스]

최근, 단순 오락용 드론에서 촬영용 드론까지, 드론을 즐기는 이용자 수가 늘면서 속도와 묘기를 경쟁하는 ''드론 레이싱'' 또한 국내외에서 큰 인기를 끌고 있는데요. 공중에서 스피드 경쟁을 벌이는 ''드론레이서'', 오늘 <꿈을 잡아라>에서 소개해드립니다.','관리자',to_date('20/08/17','RR/MM/DD'),null,52,null,null,'imgUpload\2020\08\20\s_6311e897-f39d-4e40-9870-10b125af41ad_ginkgo-3758236_1920.jpg','imgUpload\2020\08\20\6311e897-f39d-4e40-9870-10b125af41ad_ginkgo-3758236_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (53,'합격 자소서 쓰기… 과도한 자랑·지나친 겸손은 솎아내세요','다음 달 23일부터 2021학년도 대입 수시모집이 시작된다. 원서접수를 한 달여 앞두고 어떤 식으로 준비할지 막막해하는 수험생들을 위해 세 명의 지원군이 나섰다. 2020학년도 수시 학생부종합전형(학종)에서 남다른 성과를 낸 대학생 3인방이다. 권혁규(고려대 지구환경과학과 1)군과 손선아(한국외대 독일어과 1)양, 장승혁(서울대 기계공학전공 1)군이 그 주인공. 지난해 서울 주요 대학 학종에서 잇따라 합격자 명단에 이름을 올린 이들이 수시 합격의 핵심인 자기소개서(자소서)와 면접을 중심으로 조언을 건넸다.','관리자',to_date('20/08/17','RR/MM/DD'),null,53,null,null,'imgUpload\2020\08\20\s_67f5d26c-5714-457c-9daa-52c7227c3cfc_office-594132_1920.jpg','imgUpload\2020\08\20\67f5d26c-5714-457c-9daa-52c7227c3cfc_office-594132_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (54,'[교육현장 속으로]  코딩으로 스마트 썰매 만들기 ''겨울캠프''','[EBS 정오뉴스]

코딩 교육 의무화로 학교 뿐 아니라 각 지자체에서도 학생들의 코딩 교육을 위한 프로그램을 많이 기획하고 있습니다. 지난주에는 크리스마스를 맞아 아이들이 스마트 썰매를 직접 만들고 타보는 소프트웨어 캠프가 열려 관심을 모았는데요, 어떤 배움의 현장이었는지 지금 함께 만나보시죠. ','관리자',to_date('20/08/17','RR/MM/DD'),null,54,null,null,'imgUpload\2020\08\20\s_37d72f59-fc73-46bb-9688-aad1917590ff_code-1839406_1920.jpg','imgUpload\2020\08\20\37d72f59-fc73-46bb-9688-aad1917590ff_code-1839406_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (55,'트랜스 미디어 시대, 여러 콘텐츠 아우를 창작자 양성','전 세계적으로 우리나라 문화 콘텐츠를 소비하는 사람들이 급증하고 있다. 그 인기는 국내 아이돌을 중심으로 한 케이팝(K-POP)은 물론 웹툰, 드라마, 게임 등 특정 분야를 가리지 않는다.

특히 이 같은 콘텐츠산업에서는 미디어 간의 경계를 넘어 서로 융합하는 ''트랜스 미디어(Trans media)''가 활발하게 일어난다. 인기 웹툰이 드라마나 영화, 게임 등으로 옷을 갈아입는 식이다. 이처럼 콘텐츠가 재생산되면 동시에 시장도 확대된다. 콘텐츠의 원천이라고 할 수 있는 지식재산권의 가치가 높아지고 있는 이유다.

이러한 트랜스 미디어 시대를 살아가는 창작자에게는 융합적인 세계관이 필수적이다. 현재 정보기술(IT)분야에서 여러 형태의 융합이 시도되고 있지만, 콘텐츠 분야에서는 아직 체계적인 접근이나 교육이 이뤄지지 못했다. 이러한 교육 수요를 반영해 청강문화산업대학교(총장 황봉성)가 2021학년도부터 신설·운영하는 전공이 바로 융합콘텐츠스쿨(융합콘텐츠창작전공)이다.

올해 첫 신입생을 선발하는 청강대 융합콘텐츠스쿨은 프로젝트 중심 교육과정을 통해 융합콘텐츠 기획·제작·플랫폼 적용을 이끄는 창작자를 양성하는 게 목표다. ▲시대적 요구에 부합하는 콘텐츠를 기획하는 사회과학적 능력 ▲인간의 마음을 움직이고 삶의 질을 높이는 감수성과 인문학적 능력 ▲인간중심적 사용자 경험을 제공하는 과학·공학적 능력 등 창작자에게 필요한 역량을 기를 수 있도록 할 계획이다.

융합콘텐츠스쿨은 무엇보다도 기존의 경직된 교육방식으로는 새로운 문화산업에 대처할 수 없다고 강조한다. 이러한 가치관 아래 융합콘텐츠스쿨은 융합적 세계관을 중심으로 3가지 파격적인 수업방식을 제안하기로 했다. 출석 확인을 하지 않고, 우열을 가리기 위한 성적도 매기지 않는다. 학생들은 강의실에서 교수 없이 스스로 배움을 얻는다.

김정영 청강대 융합콘텐츠스쿨 교수는 "코로나19 장기화로 인한 언택트(Untact) 시대엔 출석이 더는 의미가 없다"며 "자신이 선택한 공간에서 교과과정에 맞게 콘텐츠 결과물을 만들면 된다"고 설명했다. 이어 김 교수는 "획일화된 기준으로 성적을 산출하면 창작의 핵심인 개성을 무너뜨릴 수 있기 때문에 성적은 패스(Pass)와 논 패스(Non-pass)로만 구분한다"며 "교수는 지식 전달자가 아니라 문제 해결을 돕는 ''퍼실리테이터(Facilitator)''로서 학생들과 함께 고민하고 결과물을 만들어낸다"고 덧붙였다.

전문가들은 코로나19 사태를 기점으로 콘텐츠 산업이 더욱 급변할 것이라고 전망한다. 청강대는 포스트 코로나 시대에 대비해 융합콘텐츠 교육방식과 내용을 끊임없이 혁신할 계획이다.

올해 청강대 융합콘텐츠스쿨의 전체 모집인원(정원 내)은 40명이다. 수시모집에서는 1차와 2차로 나눠 각각 21명, 16명을 선발한다. 수시 1차 원서접수는 9월 23일부터 10월 13일까지, 2차 원서접수는 11월 23일부터 12월 7일까지 실시한다.


[오푸름 조선에듀 기자]','관리자',to_date('20/08/17','RR/MM/DD'),null,55,null,null,'imgUpload\2020\08\20\s_9fa6f5ea-1035-42ce-ac2d-b46322871822_computer-2561518_1920.jpg','imgUpload\2020\08\20\9fa6f5ea-1035-42ce-ac2d-b46322871822_computer-2561518_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (56,'학종 모집 확대·교과전형 축소 SW융합대학, 심층면접 진행','세종대학교(총장 배덕효)는 영국의 세계적인 대학평가기관인 QS와 조선일보가 공동으로 실시한 ''2020 QS 아시아 대학평가''에서 종합순위 91위에 올랐다. 2016년 아시아 93위를 기록한 데 이어 순위가 2계단 상승한 것으로, 5년 연속 아시아 100위에 진입하는 성과를 거뒀다. ''2020 QS 세계대학평가 분야별 순위''에서는 세종대 호텔관광경영학전공이 국내 2위와 세계 42위에 올랐으며, 그 밖에 토목구조공학은 국내 7위, 물리천문학은 국내 10위, 그리고 컴퓨터공학은 국내 11위를 기록했다. 또 다른 글로벌 대학평가기관인 THE가 실시한 ''2020 THE 세계대학평가''에서는 국내 10위, 세계 400위권에 진입했다.

논문수준을 기반으로 세계대학순위를 매기는 라이덴(Leiden) 순위에서는 2018년 국내 4위를 기록한 데 이어 2019년에도 같은 순위를 유지하며 논문 피인용도 국내 2위라는 성과를 보였다.

또한 세종대 소프트웨어융합대학지원사업단은 지난해 6월 대양 AI센터에서 AI콜라보랩을 개소했다. AI콜라보랩은 4차 산업혁명에 기반을 둔 혁신적 교육체계를 구축하기 위해 팀워크로 협업이 가능하도록 설계됐다. 브레인스토밍을 위한 회의공간과 SW교육 플랫폼, 3D프린팅룸, 메이커스 워크숍, VR/AR룸, 비주얼스튜디오로 구성해 다양한 교육이 가능하다.

조진우 세종대 입학처장은 "세종대는 창의 융합형 인재 양성을 교육 목표로, 4차 산업혁명 시대를 대비해 전교생을 대상으로 기초코딩 의무교육을 하고 있다"며 "남은 수험기간 최선을 다해 내년 세종대 캠퍼스에서 만나기를 희망한다"고 밝혔다.','관리자',to_date('20/08/17','RR/MM/DD'),null,56,null,null,'imgUpload\2020\08\20\s_e3e8debe-6d2b-4946-b707-07609935b7c7_writing-1149962_1920.jpg','imgUpload\2020\08\20\e3e8debe-6d2b-4946-b707-07609935b7c7_writing-1149962_1920.jpg');
REM INSERTING into ATEAM.RASP
SET DEFINE OFF;
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-17 22:29:48','2020-08-20 11:40:39','71');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-18 22:33:09','2020-08-20 11:40:39','68');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-19 22:27:13','2020-08-19 10:27:25','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:02:45','2020-08-21 04:03:02','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:02:45','2020-08-21 04:03:02','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:02:45','2020-08-21 04:03:02','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:26:15','2020-08-21 04:26:17','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:26:15','2020-08-21 04:26:17','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 16:26:15','2020-08-21 04:26:17','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 13:47:35','2020-08-21 01:47:46','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 13:47:36','2020-08-21 01:47:46','0');
Insert into ATEAM.RASP (START_TIME,END_TIME,ACCUPATION_TIME) values ('2020-08-21 13:47:36','2020-08-21 01:47:46','0');
REM INSERTING into ATEAM.STUDY
SET DEFINE OFF;
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','과목없음','00:00:00','20/07/29');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','과목없음','00:00:00','20/07/29');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('2','과목없음','03:00:00','20/08/12');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','프로그래밍','01:07:11','20/08/21');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('성공대입','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('관리자','과목없음','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('쇼닝','과목없음','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('오현진','과목없음','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('하하','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('오현진','자바','01:05:15','20/08/18');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('정민영','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('성공할거야','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','물리','02:23:23','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','생물','12:43:08','20/07/31');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','생물','02:43:08','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','02:13:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','프로그래밍','01:39:10','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','게임','02:02:02','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','요리','03:03:03','20/07/31');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('김은혜','수학','00:00:33','20/08/02');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','02:10:31','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('숀맘','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','05:08:11','20/08/11');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','프로그래밍','02:19:10','20/08/12');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','01:10:11','20/08/07');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','02:10:15','20/08/02');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('하늘','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('썬','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('관리자','ii','00:00:26','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('임수빈','JAVA','03:20:10','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('정민영','JAVA','01:10:26','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('취업꿈나무','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('탈출백','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('크림크','과목없음','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('취업가자아으','과목없음','00:00:00','20/08/18');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','알고리즘','03:10:11','20/08/07');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('2','java','00:00:04','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','안드로이드','00:05:26','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('오현진','자바','02:02:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('오현진','자바','01:33:05','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('이윤하','JAVA','00:00:43','20/08/21');
REM INSERTING into ATEAM.SUBJECT
SET DEFINE OFF;
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('9ㅑㅑ','00:00:00','2020/07/24');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('혀ㅗㅕ','00:00:00','2020.07.14');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('허러','00:00:14','2020/07/20');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('666','00:00:34','2020/07/24');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('ㅏㅐㅐㅔ','00:00:03','2020/07/22');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('영어','16:04:34','2020/07/24');
REM INSERTING into ATEAM.TBL_MESSAGE
SET DEFINE OFF;
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (82,'2','2','666666666666666666',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (62,'2','2','sdadadsadagw634',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (63,'2','2','sdsadsffy563542',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (68,'2','2','sdasdsadas',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (171,'관리자','오현진','안녕하세요
의견 및 질문에 글을 올렸는데
빠른 답변 부탁드리겠습니다.',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (64,'2','2','asdadad',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (67,'2','2','dsadadas',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (69,'2','2','2133123',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (70,'2','2','sdadasrewr',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (71,'2','2','fsgfsggsf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (72,'2','2','fggfsgfgsf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (73,'2','2','다시 확인',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (77,'2','2','dsadasd',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (75,'2','2','sdadasdas',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (76,'2','2','sdadsad',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (78,'2','2','765676575',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (79,'2','2','sdadasda',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (80,'2','2','sdsadsa',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (81,'2','2','767567657',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (86,'2','2','sdsdsad',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (84,'2','2','sdsadsadasd',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (85,'2','2','sdsadsadq434p[eqwtrew503450-43ot546-456',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (87,'2','2','asdsadwaredeqw4r3242421111111111111',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (88,'2','2','sdsadsad00000000',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (89,'2','2','dsadasdq4444444444',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (90,'2','2','wewqeqweq',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (91,'2','2','sadsadsadsd',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (92,'2','2','sdsdadsad',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (93,'2','2','111111111111111111111111111111111111',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (94,'2','2','wedwqeqwaeqa',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (95,'2','2','weqeqweqw2222',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (96,'2','2','sdadsad45443',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (97,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (98,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (99,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (100,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (101,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (102,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (103,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (104,'2','2','sdsadada',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (105,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (106,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (107,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (108,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (109,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (110,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (111,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (112,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (113,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (114,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (115,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (116,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (117,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (118,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (119,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (120,'2','2','asdsadadsa4e22',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (121,'2','2','sdsadsadsar333',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (122,'2','2','sadsadadr3',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (123,'2','2','ㄴㅇㅁㅇㄴㅁㅇㄴㅁ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (124,'2','2','ㄴㅇㅁㅇㄴㅁㅇㅁ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (125,'2','2','ㄴㅇㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (126,'2','2','ㄶㅀㄹㄴ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (128,'2','2','ㅓㅏㅓㅏㅓㅏ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (130,'2','2','ㅗㅓㅓㅗ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (131,'2','2','ㄶㄶㄹ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (132,'2','2','ㅓㅗ허ㅗ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (133,'2','2','adf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (134,'2','2','ㄹㄹㄹ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (135,'2','2','ㅗ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (136,'2','2','ㅎㅎㅎ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (137,'2','2','ㄹㅇㄹㅇㅁ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (138,'2','2','daf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (139,'2','2','oo',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (140,'2','2','ye',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (143,'2','2','ㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (145,'2','2','ㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (144,'2','2','ㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (146,'2','2','ㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (147,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (148,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (149,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (150,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (151,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (152,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (153,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (154,'2','2','ㅈㄴㅇㄴㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (155,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (156,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (157,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (158,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (159,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (160,'2','2','ㄴㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (161,'2','2','ㄴㅇㅁㅁㅇㅁ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (162,'2','2','ㄴㅇㅁㅇㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (163,'2','2','876887686',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (164,'2','2','ㅇㄴㅁㅇㅁㅇㄴㅁㅇ',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (173,'쇼닝','썬','안녕하세요^^
토익 책 문의 드리려고 쪽지 드립니다!',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (166,'2','2','2222222222222222222222222222',null,to_date('20/08/18','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (172,'오현진','관리자','안녕하세요.
의견 및 질문 답글 완료하였습니다.',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (174,'쇼닝','관리자','fffff',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (175,'쇼닝','오현진','ㅎㅎ',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (176,'쇼닝','오현진','ㅎㅎ',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (177,'쇼닝','오현진','쪽지 테스트에요',null,to_date('20/08/21','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (178,'쇼닝','오현진','테스트입니다',null,to_date('20/08/21','RR/MM/DD'));
REM INSERTING into ATEAM.TESTTIME
SET DEFINE OFF;
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('영어','00:00:02','2020/07/17');
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('영어','00:00:38','2020/07/17');
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('영어','00:01:13','2020/07/17');
REM INSERTING into ATEAM.WEB_NOTICE
SET DEFINE OFF;
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (22,'[공지] 시스템 점검 및 개선으로 인한 서비스 중단안내(20.8.13(목) 21:00 ~20.8.13(목) 02:00 약 5시간)','

안녕하세요. GOOD PARTNER시스템 관리자입니다.
GOOD PARTNER는 사용자의 개선의견 반영 및 시스템 기능 보강등을 위하여 주기적인 점검과 프로그램 반영을 진행하고 있습니다.
보다 나은 서비스를 위하여 아래와 같이 시스템이 일시중단되오니 불편하시더라도 양해하여 주시기 바랍니다.


○ 중지일시 : 2020.8.13(목) 21:00 ~ 2020.8.13(목) 02:00 약 5시간
○ 중지사유 : GOOD PARTNER 신규콘텐츠 반영 및 처리 속도개선 등
○ 서비스중지 대상
-GOOD PARTNER홈페이지
- 나의 공부시간 관리시스템

※ 작업시간사이에는 나의 공부시간 처리가 불가능합니다. ','관리자',to_date('20/08/17','RR/MM/DD'),5,null,null,21,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (24,'[공지] 오픈 API 개편에 따른 안내(기존 사용자 필독 부탁드립니다.)','


안녕하세요.
GOOD PARTNER 운영자입니다.

20.8.20(목) 부로 GOOD PARTNER 의 오픈 API가 개편됩니다.

현재 홈페이지에서 제공되는 도서관정보 기준으로 제공되며
기존에 사용하시던 URL이 바뀌게 됩니다.

이에 따라 기존에 사용하시던 URL을 대체하여 이용하셔야 합니다.
(기존에 서비스되던 URL은 일정 기간 후 서비스 이용이 불가능합니다. 일정은 별도로 공지토록 하겠습니다.)

자세한 내용은 매뉴얼을 참조해 주시기 바랍니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),3,'홈페이지_사용자_오픈API+메뉴얼_v0.1.hwp','/upload/notice/2020/08/17/8a8ce00e-387c-4ce5-bbdc-f9bfadb2045a_홈페이지_사용자_오픈API+메뉴얼_v0.1.hwp',23,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (26,'[공지] GOOD PARTNER 메인화면 개편 및 개인 맞춤서비스 개시 안내(20.8.20 / 일자변경)','


안녕하세요.
GOOD PARTNER운영자입니다.

다가오는 20.8.20(목) 부로 홈페이지 메인화면 개편 및 개인별 맞춤서비스가 서비스됩니다.
변경되는 부분은 첨부된 매뉴얼을 참조해 주시기 바랍니다.

홈페이지 로그인 후 사용하시는 "My서비스" 와 "내가 쓴 글" 메뉴를 
하나의 메뉴로 보기 쉽도록 통합할 예정입니다.
(일정 및 기능은 별도 안내 예정)

행복한 하루 되시길 바랍니다.
감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),4,'홈페이지_사용자_메뉴얼_v0.1.hwp','/upload/notice/2020/08/17/c73dffa5-e50c-4f62-aa26-2e977567ea8a_홈페이지_사용자_메뉴얼_v0.1.hwp',25,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (28,'[공지] 고객만족도 조사 결과 당첨자 안내','

안녕하세요.
GOOD PARTNER 운영자입니다.

지난 08.7(금)~14(금) 실시한 고객만족도 조사에서 이벤트 당첨자를 붙임과 같이 공지드립니다.

온라인 문화상품권은 08.21(금) 일괄 발송 예정입니다.

많은 참여 감사드립니다.


※ 문의 전화 062-362-7797','관리자',to_date('20/08/17','RR/MM/DD'),5,'당첨자명단.pdf','/upload/notice/2020/08/17/1301ab96-abe4-4311-8cd1-33c84581bd1a_당첨자명단.pdf',27,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (30,'[공지] 본인인증 서비스 시스템 작업 공지(처리완료)','


안녕하세요.
GOOD PARTNER 운영자입니다.

현재 본인확인 서비스문제가 금일 12:29에 정상 조치처리되었습니다.

이용에 불편을 드려 죄송합니다.','관리자',to_date('20/08/17','RR/MM/DD'),0,null,null,29,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (32,'[공지] 홈페이지 회원약관 재동의 안내','안녕하세요.

GOOD PARTNER에서는 보다 편리하고 안전한 웹사이트 이용을 위해
관련법령에 따라 개인정보 보유에 대한 재동의를 시행하고 있습니다.

회원가입 후 2년이 경과된 회원에 한해서
개인정보 재동의를 하지 않은 회원분들은 탈퇴처리가 되오니 양해부탁드립니다.

<<관련근거>>
▨ 개인정보보호법 제12조1항
① 행정자치부장관은 개인정보의 처리에 관한 기준, 개인정보 침해의 유형 및 예방조치 등에 관한 표준 개인정보 보호지침(이하 "표준지침"이라 한다)을 정하여 개인정보처리자에게 그 준수를 권장할 수 있다.

▨ 표준개인정보보호지침 제60조3항
③ 정책고객, 홈페이지회원 등의 홍보 및 대국민서비스 목적의 외부 고객 명부는 특별한 경우를 제외하고는 2년을 주기로 정보주체의 재동의 절차를 거쳐 동의한 경우에만 계속적으로 보유할 수 있다.

▨ 한국고용정보원 개인정보보호 지침 제14조3항
③ 대국민서비스 목적의 회원개인정보 등의 개인정보파일에 대해서는 특별한 경우를 제외하고는 2년을 주기로 정보주체의 재동의 절차를 거쳐 동의한 경우에만 개인정보를 계속적으로 보유할 수 있다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),2,null,null,31,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (34,'[공지] 개인정보 재동의 처리 매뉴얼','안녕하세요.
GOOD PARTNER 운영자입니다.

"개인정보 수집에 대한 2주년 재동의 " 관련 처리방법에 대해 문의가 많아
해당 절차에 대한 매뉴얼을 배포합니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),1,'개인정보재동의처리매뉴얼.pdf','/upload/notice/2020/08/17/1cd251e4-1adf-4518-9665-58319f67344f_개인정보재동의처리매뉴얼.pdf',33,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (36,'[안내] 고객센터 전화연결 지연 안내','안녕하세요. GOOD PARTNER시스템 담당자입니다.

코로나19 영향으로 고객센터 문의량이 급증하여 연결이 지연되고 있습니다.

홈페이지 이용방법 문의는 담당기관으로 문의 부탁드립니다.

다시한번 이용에 불편을 드려 죄송합니다.

감사합니다.
','관리자',to_date('20/08/17','RR/MM/DD'),0,null,null,35,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (38,'[공지] 게시판 이용안내 및 저작권 자료 취급에 관한 공지','회원 여러분 안녕하세요. GOOD PARTNER입니다.

저희 GOOD PARTNER를 항상 아껴주시고, 이용해주시는 회원 여러분들께 진심으로 감사의 말씀을 드립니다.
회원님들이 GOOD PARTNER를 이용하시는데 있어서 더욱 편리하고 안전한 활동을 하실 수 있도록,
다음과 같은 안내사항을 공지하오니, 필독하여 주시기 바랍니다.

※GOOD PARTNER는 저작권, 초상권, 타인의 권리를 침해하는 자료는 공유하지 않습니다.
      - GOOD PARTNER는 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 자료의 등록을  금지합니다.
       만약 타인의 저작권, 초상권, 그 밖의 타인의 권리를 침해하는 글이 등록되는 경우 통보없이 삭제할 수 있습니다.
       또한 임의 삭제 조치에도 불구하고, 지속적으로 같은 게시글이 등록 될 경우, 활동정지 및 강퇴처리 할 수 있습니다.
','관리자',to_date('20/08/17','RR/MM/DD'),3,null,null,37,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (40,'[공지] GOOD PARTNER를 사칭하는 닉네임을 주의 부탁드립니다.','안녕하세요. GOOD PARTNER 관리자 입니다.

저희 GOOD PARTNER는 회원님들께 정확한 정보를 전달하고자 노력하고 있습니다.
하지만 간혹 GOOD PARTNER 관리자를 사칭하여 광고 또는 홍보를 하는 경우가 발생하고 있어 주의를 부탁드리고자 합니다.

※저희 GOOD PARTNER의 관리자는 "admin"  하나만 존재하며, 그 외  닉네임은 모두 사칭이니 주의 부탁드립니다.

GOOD PARTNER 관지사를 사칭하는 닉네임을 발견하신다면 언제든지  의견 및 질문 게시판으로 신고 부탁드립니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),1,null,null,39,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (42,'[팁]"취업하고 싶은 일반고생 다 모여라!"  일반고 특화 직업능력개발훈련 안내','안녕하세요

GOOD PARTNER 운영자입니다.

''취업하고 싶은 일반고생 다 모여라! 일반고 특화 직업능력개발훈련''을 다음과 같이 안내합니다.


■ 일반고 특화과정이란?
○ 취업을 희망하는 일반고 3학년생이 취업에 필요한 직무능력을 습득할 수 있도록 지원하는 맞춤형 훈련

■ 훈련대상은?
○ 대학에 진학하지 않고 취업을 희망하는 일반고 3학년 학생

■ 어떤 종류의 훈련을 받을 수 있나요?
○ 국가기간·전략산업직종훈련 (국기훈련)
- 항공기정비, 자동차정비, 게임콘텐츠제작, 전기·전자, 건축, 3D 프린팅, 사물인터넷 등
○ 일반직종계좌제훈련 (계좌제훈련 또는 내일배움카드)
- 미용, 조리, 제과제빵, 바리스타, 애견미용, 경영회계, 관광서비스 등

■ 혜택과 의무는 무엇인가요?
○ (혜택) 훈련비 전액 지원, 80% 이상 출석 시 훈련장려금 月11만 6천원 지급, 노동인권교육 제공, 고3학생으로 이루어진 단일반 운영
* 취업성공패키지에 참여할 경우 취업지원서비스와 청년내일채움공제의 혜택도 받을 수 있음(삭제)
○ (의무) 훈련기관의 출석 규정 준수, 훈련받은 직종 관련 자격증 반드시 취득

■ 특화과정 훈련절차
1) 수요조사
- 1년 과정은 2학년 2학기(9월)에, 6개월 과정은 3학년 1학기(4월)에 수요조사 실시
- 17개 시·도별로 수요조사 결과를 반영하여 지역별·직종별 훈련기관 선정
2) 훈련계좌 발급 및 훈련 수강
- 교육청·학교·고용센터 등을 통해 희망과정 훈련기관을 확인
- 지역별 고용센터를 방문하여 훈련계좌를 발급받고 훈련 참여
- 1년 과정은 3월~다음 해 2월까지, 6개월 과정은 9월~2월까지 훈련 실시
3) 훈련과정 수료 후 취업지원서비스
- 훈련과정을 수료하면 고용센터와 훈련기관에서 취업을 위한 지원서비스 제공

■ 19년 하반기 일반고 특화과정 선정과정 확인하기
www.moel.go.kr/news/notice/noticeView.do?bbs_seq=20190700067


감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),4,'일반고특화직업능력개발훈련안내.jpg','/upload/notice/2020/08/17/6bbdccf5-3f66-4d58-b6ec-ad9279dd9285_일반고특화직업능력개발훈련안내.jpg',41,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (44,'[안내]홈페이지 메인화면 디자인 변경 안내','안녕하세요
GOOD PARTNER 시스템 관리자입니다.

현재 개편 진행중에 있는 ’홈페이지 및 모바일 디자인 개편‘ 완료 시(''20.8월)까지
한시적으로 메인화면을 일부 개편하여 운영(8.1~)코자 합니다.

적용예정 메인 화면은 첨부파일을 확인하시기 바랍니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),6,'시안.PNG','/upload/notice/2020/08/17/594aad8e-2061-4cd3-9f04-de600cd6efea_시안.PNG',43,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (46,'[안내]광복절 (8월 17일) 임시공휴일 지정에 따른 안내문 공지','GOOD PARTNER 시스템관리자 입니다.

* 8월 17일(월)이 임시공휴일로 지정됨에 따라

고객센터(온라인, 전화) 문의 및 상담 이용이 불가능하오니 GOOD PARTNER서비스 이용에 참고 바랍니다.

감사합니다.','관리자',to_date('20/08/17','RR/MM/DD'),18,null,null,45,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (64,'공지사항입니다','공지사항입니다','관리자',to_date('20/08/20','RR/MM/DD'),0,null,null,63,0,0);
--------------------------------------------------------
--  DDL for Index UNIV_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."UNIV_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_UN_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SC_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."SC_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_SC_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ETC_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."ETC_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_ETC_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GOSI_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."GOSI_ID_PK" ON "ATEAM"."COMMUNITY_GO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UNIV_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."UNIV_ID_PK" ON "ATEAM"."COMMUNITY_UN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ADMINIMG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."ADMINIMG_PK" ON "ATEAM"."ADMINIMG" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index JOB_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."JOB_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_JOB_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index WEB_NOTICE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."WEB_NOTICE_ID_PK" ON "ATEAM"."WEB_NOTICE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ETC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."ETC_ID_PK" ON "ATEAM"."COMMUNITY_ETC" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMP_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."EMP_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_EMP_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index JOB_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."JOB_ID_PK" ON "ATEAM"."COMMUNITY_JOB" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GOSI_COMMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."GOSI_COMMENT_ID_PK" ON "ATEAM"."COMMUNITY_GO_COMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."MEMBERS_PK" ON "ATEAM"."MEMBERS" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EVENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."EVENT_PK" ON "ATEAM"."EVENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MYLIST_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."MYLIST_ID_PK" ON "ATEAM"."MYLIST" ("ID", "CATEGORY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."EMP_ID_PK" ON "ATEAM"."COMMUNITY_EMP" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OPINION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."OPINION_PK" ON "ATEAM"."OPINION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SC_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEAM"."SC_ID_PK" ON "ATEAM"."COMMUNITY_SC" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_EMP_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_DELETE" 
after DELETE ON COMMUNITY_emp
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_EMP_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_INSERT" 
after insert on COMMUNITY_emp for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_EMP_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_emp for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_EMP_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_ETC_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_DELETE" 
after DELETE ON COMMUNITY_etc
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_ETC_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_INSERT" 
after insert on COMMUNITY_etc for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_ETC_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_etc for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_ETC_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_GO_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_DELETE" 
after DELETE ON COMMUNITY_go
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_GO_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_INSERT" 
after insert on COMMUNITY_go for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_GO_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_go for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_GO_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_JOB_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_DELETE" 
after DELETE ON COMMUNITY_job
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;
/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_JOB_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_INSERT" 
after insert on COMMUNITY_job for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_JOB_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_job for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_JOB_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_SC_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_DELETE" 
after DELETE ON COMMUNITY_sc
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_SC_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_INSERT" 
after insert on COMMUNITY_sc for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_SC_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_sc for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_SC_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_UN_DELETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_DELETE" 
after DELETE ON COMMUNITY_un
FOR EACH ROW
BEGIN
     DELETE FROM mylist where title=:OLD.title;
END;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_DELETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_UN_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_INSERT" 
after insert on COMMUNITY_un for each row
 begin
 insert into Mylist values(:new.id,:NEW.title,:NEW.content,:NEW.writer,:NEW.writedate,
 :NEW.readcnt,:NEW.filename,:NEW.filepath,:new.category,:new.COMMENTCNT);
 end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYLIST_TRIGGER_UN_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_UPDATE" 
after update of title,content,COMMENTCNT on COMMUNITY_un for each row
begin
update Mylist
set title=:NEW.title,content=:new.content,COMMENTCNT=:new.COMMENTCNT
where title=:old.title;
end;

/
ALTER TRIGGER "ATEAM"."MYLIST_TRIGGER_UN_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_EMP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_EMP" 
    before insert on COMMUNITY_EMP
    for each row
begin
    SELECT seq_emp.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_EMP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_EMP_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_EMP_COMMENT" 
    before insert on community_emp_comment
    for each row
BEGIN
    select SEQ_EMP_COMMENT.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_EMP_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_ETC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_ETC" 
    before insert on COMMUNITY_Etc
    for each row
begin
    SELECT seq_Etc.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_ETC" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_ETC_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_ETC_COMMENT" 
    before insert on community_etc_comment
    for each row
BEGIN
    select SEQ_etc_COMMENT.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_ETC_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_EVENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_EVENT" 
    before insert on event
    for each row
begin
    SELECT seq_event.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_EVENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_GOSI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_GOSI" 
    BEFORE insert on COMMUNITY_GO for EACH row
begin 
    SELECT seq_gosi.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_GOSI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_GOSI_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_GOSI_COMMENT" 
    before insert on COMMUNITY_GO_COMMENT
    for each row
BEGIN
    select SEQ_gosi_COMMENT.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_GOSI_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_INSERTNAMESUBTIME_S
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_INSERTNAMESUBTIME_S" 
after insert on members for each row
begin
insert into study VALUES(:new.name,'과목없음', '00:00:00', sysdate);
end;

/
ALTER TRIGGER "ATEAM"."TRG_INSERTNAMESUBTIME_S" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_JOB
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_JOB" 
    BEFORE insert on community_job for EACH row
begin 
    SELECT seq_job.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_JOB" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_JOB_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_JOB_COMMENT" 
    before insert on community_job_comment
    for each row
BEGIN
    select SEQ_job_COMMENT.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_JOB_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_MEMBERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_MEMBERS" 
    before insert on members
    for each row
BEGIN
    select seq_members.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_MEMBERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_MESSAGE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_MESSAGE" 
    BEFORE insert on tbl_message for EACH row
begin 
    SELECT message_seq.nextval into :new.mid from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_MESSAGE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_NAMEUPDATE_D
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_NAMEUPDATE_D" 
after update of name on members for each row
begin
update d_daylist
set name=:NEW.name where name=:OLD.name;
end;
/
ALTER TRIGGER "ATEAM"."TRG_NAMEUPDATE_D" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_NAMEUPDATE_F
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_NAMEUPDATE_F" 
after update of name on members for each row
begin
update friend
set name=:NEW.name where name=:OLD.name;
end;
/
ALTER TRIGGER "ATEAM"."TRG_NAMEUPDATE_F" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_NAMEUPDATE_S
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_NAMEUPDATE_S" 
after update of name on members for each row
begin
update study
set name=:NEW.name where name=:OLD.name;
end;
/
ALTER TRIGGER "ATEAM"."TRG_NAMEUPDATE_S" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_OPINION
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_OPINION" 
    before insert on opinion
    for each row
begin
    SELECT seq_opinion.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_OPINION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_SC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_SC" 
    BEFORE insert on community_sc for EACH row
begin 
    SELECT seq_sc.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_SC" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_SC_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_SC_COMMENT" 
    before insert on community_sc_comment
    for each row
BEGIN
    select SEQ_sc_COMMENT.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_SC_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_UNIV
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_UNIV" 
    before insert on COMMUNITY_UN
    for each row
begin
    SELECT seq_univ.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_UNIV" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_UNIV_COMMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_UNIV_COMMENT" 
    before insert on COMMUNITY_UN_COMMENT
    for each row
BEGIN
    select SEQ_univ_COMMENT.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "ATEAM"."TRG_UNIV_COMMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_WEB_NOTICE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATEAM"."TRG_WEB_NOTICE" 
    before insert on web_notice
    for each row
begin
    SELECT seq_web_notice.nextval into :new.id from dual;
end;

/
ALTER TRIGGER "ATEAM"."TRG_WEB_NOTICE" ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMUNITY_ETC_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" ADD CONSTRAINT "ETC_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MESSAGE
--------------------------------------------------------

  ALTER TABLE "ATEAM"."TBL_MESSAGE" ADD PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."TBL_MESSAGE" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."TBL_MESSAGE" MODIFY ("SENDER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."TBL_MESSAGE" MODIFY ("TARGETID" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."TBL_MESSAGE" MODIFY ("MID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_SC
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_SC" ADD CONSTRAINT "SC_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_SC" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_SC" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_SC" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_UN
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_UN" ADD CONSTRAINT "UNIV_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_UN" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_UN" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_UN" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_ETC
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_ETC" ADD CONSTRAINT "ETC_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_ETC" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_ETC" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_ETC" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_JOB
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_JOB" ADD CONSTRAINT "JOB_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_JOB" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_JOB" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_JOB" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_GO
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_GO" ADD CONSTRAINT "GOSI_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_GO" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_GO" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_GO" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_SC_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" ADD CONSTRAINT "SC_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_EMP_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" ADD CONSTRAINT "EMP_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table D_DAYLIST
--------------------------------------------------------

  ALTER TABLE "ATEAM"."D_DAYLIST" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDY
--------------------------------------------------------

  ALTER TABLE "ATEAM"."STUDY" MODIFY ("SUBJECT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "ATEAM"."MEMBERS" ADD CONSTRAINT "MEMBERS_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."MEMBERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MEMBERS" MODIFY ("JOB" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MEMBERS" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MEMBERS" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANDROID
--------------------------------------------------------

  ALTER TABLE "ATEAM"."ANDROID" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."ANDROID" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_GO_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" ADD CONSTRAINT "GOSI_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_JOB_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" ADD CONSTRAINT "JOB_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FRIEND
--------------------------------------------------------

  ALTER TABLE "ATEAM"."FRIEND" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."FRIEND" MODIFY ("USER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRESS
--------------------------------------------------------

  ALTER TABLE "ATEAM"."PRESS" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."PRESS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."PRESS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."PRESS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_EMP
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_EMP" ADD CONSTRAINT "EMP_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_EMP" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_EMP" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_EMP" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."EVENT" ADD CONSTRAINT "EVENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."EVENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."EVENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."EVENT" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."EVENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_UN_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" ADD CONSTRAINT "UNIV_COMMENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" MODIFY ("PID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WEB_NOTICE
--------------------------------------------------------

  ALTER TABLE "ATEAM"."WEB_NOTICE" ADD CONSTRAINT "WEB_NOTICE_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."WEB_NOTICE" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."WEB_NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."WEB_NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMINIMG
--------------------------------------------------------

  ALTER TABLE "ATEAM"."ADMINIMG" ADD CONSTRAINT "ADMINIMG_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."ADMINIMG" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MYLIST
--------------------------------------------------------

  ALTER TABLE "ATEAM"."MYLIST" ADD CONSTRAINT "MYLIST_ID_PK" PRIMARY KEY ("ID", "CATEGORY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."MYLIST" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MYLIST" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MYLIST" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."MYLIST" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OPINION
--------------------------------------------------------

  ALTER TABLE "ATEAM"."OPINION" ADD CONSTRAINT "OPINION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATEAM"."OPINION" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."OPINION" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."OPINION" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ATEAM"."OPINION" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_EMP_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" ADD CONSTRAINT "EMP_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_EMP" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_EMP_COMMENT" ADD CONSTRAINT "EMP_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_ETC_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" ADD CONSTRAINT "ETC_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_ETC" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_ETC_COMMENT" ADD CONSTRAINT "ETC_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_GO_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" ADD CONSTRAINT "GOSI_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_GO" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_GO_COMMENT" ADD CONSTRAINT "GOSI_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_JOB_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" ADD CONSTRAINT "JOB_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_JOB" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_JOB_COMMENT" ADD CONSTRAINT "JOB_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_SC_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" ADD CONSTRAINT "SC_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_SC" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_SC_COMMENT" ADD CONSTRAINT "SC_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_UN_COMMENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" ADD CONSTRAINT "UNIV_COMMENT_PID_FK" FOREIGN KEY ("PID")
	  REFERENCES "ATEAM"."COMMUNITY_UN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEAM"."COMMUNITY_UN_COMMENT" ADD CONSTRAINT "UNIV_COMMENT_WRITER_FK" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table D_DAYLIST
--------------------------------------------------------

  ALTER TABLE "ATEAM"."D_DAYLIST" ADD CONSTRAINT "D_DAYLIST_FK1" FOREIGN KEY ("NAME")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "ATEAM"."EVENT" ADD CONSTRAINT "EVENT_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRIEND
--------------------------------------------------------

  ALTER TABLE "ATEAM"."FRIEND" ADD CONSTRAINT "FRIEND_FK1" FOREIGN KEY ("NAME")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPINION
--------------------------------------------------------

  ALTER TABLE "ATEAM"."OPINION" ADD CONSTRAINT "OPINION_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRESS
--------------------------------------------------------

  ALTER TABLE "ATEAM"."PRESS" ADD CONSTRAINT "PRESS_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STUDY
--------------------------------------------------------

  ALTER TABLE "ATEAM"."STUDY" ADD CONSTRAINT "STUDY_FK1" FOREIGN KEY ("NAME")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_MESSAGE
--------------------------------------------------------

  ALTER TABLE "ATEAM"."TBL_MESSAGE" ADD CONSTRAINT "FK_USERSENDER" FOREIGN KEY ("SENDER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ENABLE;
  ALTER TABLE "ATEAM"."TBL_MESSAGE" ADD CONSTRAINT "FK_USERTARGET" FOREIGN KEY ("TARGETID")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WEB_NOTICE
--------------------------------------------------------

  ALTER TABLE "ATEAM"."WEB_NOTICE" ADD CONSTRAINT "WEB_NOTICE_FK1" FOREIGN KEY ("WRITER")
	  REFERENCES "ATEAM"."MEMBERS" ("NAME") ON DELETE CASCADE ENABLE;
