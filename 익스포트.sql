--------------------------------------------------------
--  ������ ������ - �ݿ���-8��-21-2020   
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
Insert into ATEAM.ADMINIMG (WRITER,FILENAME,FILEPATH,NUM) values ('������','xvm09daxz5v6451.jpg','/upload/education/2020/08/20/9b59c312-de5c-4924-8780-ad02049d07a2_xvm09daxz5v6451.jpg',6);
REM INSERTING into ATEAM.ANDROID
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_EMP
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'��ȸ��Ȱ ����� �е��� ���� �����ϴ� �� �װ��� �˷��帳�ϴ�.','1. ��ȸ�� �������� ������ ��������� �����϶�

2. ��ġ�� ���� �������� �η�η� ģ�ض�.

3. �� �㹰�� ���� ������ �ϱ� ���� Ÿ���� �㹰�� ���Ƶ� ����ġ�� �����ִ� ����� �Ƕ�.

4. ���ϴٰ� �����ϴ� ����� ��ų� �����ؼ� �̵��� ���һ����� ���� ���� ����.

�̻� ���� ���� �� Ȥ�ó� �ΰ����迡 ����� �е��� ���� ����ý��ϴ�.
����� ����Ǽ���^^','���',to_date('20/08/18','RR/MM/DD'),0,null,null,'emp',0);
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (11,'[������]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','2',to_date('20/08/15','RR/MM/DD'),5,null,null,'emp',1);
Insert into ATEAM.COMMUNITY_EMP (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'������ �� �׽�Ʈ�Դϴ�','������ �� �׽�Ʈ','������',to_date('20/08/19','RR/MM/DD'),0,null,null,'emp',0);
REM INSERTING into ATEAM.COMMUNITY_EMP_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_ETC
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_ETC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'ī�װ� ��Ÿ�� �۾��� �׽�Ʈ','�׽�Ʈ�Դϴ�.','������',to_date('20/08/19','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.COMMUNITY_ETC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (6,'[��Ÿ]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','2',to_date('20/08/15','RR/MM/DD'),5,null,null,'etc',0);
REM INSERTING into ATEAM.COMMUNITY_ETC_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_GO
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_GO (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[���]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),1,null,null,'go',0);
Insert into ATEAM.COMMUNITY_GO (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'������ vs �������� ������','1. ������
�������� ���δ뿡�� ���ΰ� �Բ� �ٹ��ϴ� Ư���� ������ �Դϴ�.
���� �������� �����η��� �����ϴ� ���� �η��̾����ٸ�
���뿡 �ͼ��� ����� ������ ������, ���Ӽ��� ���� ���������μ� ������ ���Ե˴ϴ�.

2.��������
���������� ���ְ����μ� �Ϲݺ��縦 ���� ����ϰų� Ȥ�� ����μ� ���ְ��� �����Ͽ� ����, ����, �λ�, ���� �� ���� ������ �����մϴ�.
�ܺ��� ��� ������ �������κ��� ������ �����ϰ� ������ �����ϸ� ������ ������ ��ȭ���� ��ȭ�� ��Ű�� ���� �մϴ�.

3. �������� �ϴ� ��
�������� �����, ����, �ر�, ������ ��� ������ ���������繫, ����, �� ���� ���� ���� ����ϰ� �˴ϴ�.
����, ����, ����, ��� �� �q�ĺ��� �پ��� ������ ����ϰ� �˴ϴ�.

4.���������� �ϤӴ� ��
�Ϲݺ��� �������, ����, ����, �λ�, ���� �� ���� ������ �����մϴ�.
����, �߿�ü��� ���� ���, �����Ⱓ����� ��ȣ, ȯ�溸ȣ Ȱ�� ����, �������� ����, ����, ���� �� ��ȭ���� Ȱ��, �ؾ���۷� ��ȣ ���� ���� �մϴ�.','�����Ұž�',to_date('20/08/17','RR/MM/DD'),4,null,null,'go',0);
REM INSERTING into ATEAM.COMMUNITY_GO_COMMENT
SET DEFINE OFF;
REM INSERTING into ATEAM.COMMUNITY_JOB
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[���ػ�]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),1,null,null,'job',0);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'[�ʴ���] ���� ������ ����о�','�ȳ��ϼ��� ����غ�� ������

�̹����� ������ ���� �����ڸ� ����

�Ϲݱ� ��� ���� ������ �غ� TIP�� Ȯ���غ��ҽ��ϴ�.

���� ������, �������̶� ������������ �˾ƺ��ҽ��ϴ�.

������� ������ ũ�� ������, ���������, ǰ������������ ���� �� �ִٰ� �մϴ�.

�� �� �������� �ڻ� ��ǰ�� ���� ������ ���� �����ϴ� ������� �մϴ�.

�������� ��������� ������ �ð�/����/��ǥ�� ���� �����̹Ƿ� �������� �⺻���� ���߰� �־�� �Ѵٰ� �ؿ�.

?

���� ������ �������� �䱸�ϴ� ��ǥ ������

���� ���� ����, ���ΰ��� �ɷ�, ������, ����屸, �м����� �ִٰ� �մϴ�.

���������� �ʴ��� ���� ������ ����о� ����Ʈ��

�Ʒ� �������� �Ͽ� �����غ��ϴ�.

�����غ�����!!','������',to_date('20/08/17','RR/MM/DD'),0,'1.PNG','/upload/job/2020/08/17/ea20fd52-9c26-4731-ac28-7c91e58440a7_1.PNG','job',0);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'OOOOO �λ��� 1�� ���� ��� ������ ��?','�λ��� 1�� ���� ��� ������ ��?','Ż���',to_date('20/08/17','RR/MM/DD'),4,null,null,'job',2);
Insert into ATEAM.COMMUNITY_JOB (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'���� �����Ȱ �������ϴ�','������������ �����ϰ� ��䵵 ���ߴµ� �����ֿ� �հ��ߴٰ� ������ �Խ��ϴ٤Ф�
���� ��� Ż���߽��ϴ�.
ó��� ������ �� ȸ�纸�� �����ϴ� ������ ����ϳ� ������, �μ�Ƽ�� ������׿�
���� �ູ�մϴ�.
�� ���� �� ��� �����߽��ϴ�. GOOD PARTNERȸ���Ե鵵 �� �� ������ �� �� �� ȭ���� �Ͻø� ���� �� ���� �̴ϴ� ȭ����!!!!!!!!!!!!','���',to_date('20/08/18','RR/MM/DD'),3,null,null,'job',2);
REM INSERTING into ATEAM.COMMUNITY_JOB_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,24,'ũ��ũ','��¥ ����ϼ̽��ϴ� ���ϵ����^^',to_date('20/08/19','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,23,'ũ��ũ','���� ������ �ȿ��׿��',to_date('20/08/19','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (21,23,'�����Ұž�','�λ��� 31�� �� �� ���� �ȳ����� �ǰ���?
�� ���հ��� ���� ���شٰ� �����ϰ� �־����ϴ�...��',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_JOB_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,24,'��','���ϵ帳�ϴ�^^',to_date('20/08/18','RR/MM/DD'),'n');
REM INSERTING into ATEAM.COMMUNITY_SC
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'�ѱ��� å ���ᳪ�� �մϴ�~^^','1. ū�� ��� - �ʱ� �� �Ǿ��ִ� ����(�⺻��)

2. å ���� ����(�⺻��)

3. ���⹮���� (�� å)

4. ���⹮���� (���� �� Ǯ����)

���� �����ø� ���� ���ּ���~^^','��',to_date('20/08/17','RR/MM/DD'),16,'1.JPG','/upload/sc/2020/08/17/19015f46-a11b-4d32-8c40-1f897f1a16c7_1.JPG','sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'[��������]���� ���͵� �����մϴ�!','�ڼҼ����� �����Ͽ� ���ϴ� ������ ��ǥ�� �Բ� �����Ͻ� ���͵���� �����մϴ�

�� 1ȸ �������� ���͵�ī�信�� ���� �� �����Դϴ�

���� ���Ͻô� �е��� ������ ��� �ּ���^^!','�ϴ�',to_date('20/08/17','RR/MM/DD'),8,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'���� ���μ��� �ñ�!','�������μ��� �Ǳ� å�� ���غ����� �ϴµ� 2017�̳� 2018�⵵ ó�� ���� å���� �����ص� �����ұ��?
�����غ��� �� �� �� �� �˷��ּ���!!','��������',to_date('20/08/17','RR/MM/DD'),8,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'�ٵ� ��� ���� �븮�� ��Ű���?','���� �μ����� �븮�� �ִµ�  ��� ������ �ϴٰ� ������ �ʹ� ���ļ� ���ڱ� ȸ�ǰ��� ��� ���̳׿�..
�ٵ� ��� �Խ� �غ����̽Ű���?  �̷��� ����� ������ ���� �غ��� �� �ִ� ����� �� �˷��ּ���~ �ٵ� ���õ� ȭ���� �Դϴ�!^^','ũ��ũ',to_date('20/08/17','RR/MM/DD'),10,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'�ѱ��� ���� �ΰ� ��õ����','��Ź�帳�ϴ�','��',to_date('20/08/17','RR/MM/DD'),9,null,null,'sc',3);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (66,'���� ����ŷ ���� 6, 7 ���� �ڷ� �Դϴ�!','���� ����ŷ ���� 6, 7 �����ڷ� �Ǹ��մϴ�!

���ͽ���ŷ ���̵���� �Ʒ��� ���� �е鲲 ��õ �帳�ϴ�.

��ȹ���ϰ��� �ϴ� ���ͽ���ŷ ��ǥ������ Lv6 ~ Lv7 �̽� �е�
�� �佺�� �����Ϸ��µ� �ΰ��̳� ���� ���� �ܱⰣ�� �ϼ��ϰ� �ʹ�
���佺 ���θ� ������ ���θ��� ���ϱ� ����� �������� ������ �е�
������ ���� �̻��� ��ǥ�� �� ���� ������ ���ϱ� �ҽ��� �ʿ��ϴ�
���佺�غ��� �ٽ��� ���ø�+���γ��������� �ʿ��Ͻ� �е�

�� ���̵���� 4õ���� �ݾ��� �ް� �ŷ� �� �����Դϴ�!!

���������� �� �����ּ���^^','���',to_date('20/08/18','RR/MM/DD'),5,'2.JPG','/upload/sc/2020/08/18/0e570520-b85f-4b6a-b549-f8b37adc7988_2.JPG','sc',1);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'���� �� �� �ִ� ������ �������?','���� ����б� 3�г� ���ڰ� ���� ���� �л��Դϴ�.

���ŵ���� ���ڰ��� ���� �� �� �� �� �� �ؼ� 2.11��� ���ɴϴ٤�.

���α׷����а�
3D �𵨸������а�
�ð��������а�

�� ������ �����ؼ� 2.11����� �� �� �ִ�, ������ ������ �������?','Ż���',to_date('20/08/18','RR/MM/DD'),4,null,null,'sc',1);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'�ѱ��� 1���̤�','�ֱ� ���� ��ä�� ��� 79������ 2���� �� ������ �� �� �� �ľ��ұ��..?
1�� 2�� ������ ���̰� ū����? �繫���Դϴ�','������ھ���',to_date('20/08/18','RR/MM/DD'),6,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'��Ȱ','1�� �غ��Ϸ��µ� �ʱ�� �ΰ��̶� ���� ���� �����ε� �Ǳ�� �п��� ����������Ф�?','����',to_date('20/08/18','RR/MM/DD'),3,null,null,'sc',2);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'��𰡾��ұ��..','1.����ȸ�� ����
���� 3500���� 4�� 3����
������ 3�ð��Ÿ�

2.��ǰȸ�� ����
���� 3õ
����ٹ����� ��
������ 3~40��
 

�Ե��̶�� ��𰡽ǰǰ���.. �� �� ������ ������','��',to_date('20/08/18','RR/MM/DD'),8,null,null,'sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'���� �´� ����� �߿��� ����','����� �񱳸� ���� ����� ���� ���� ����� �̴ϴ�.
�񱳸� �ϸ� �� ���� ���������� �������� �������°� �´� �� ���ƿ�.
�׷����� �� �ϼ���. �� �߿��մϴ�.

�� ģ������, ���� �� �ް� �� �� �ް� �̷� �ܼ��� �񱳰� �ƴ϶�
�ñ⿡ ���� �񱳿� ������ �� �ʿ��� �� �����ϴ�..','�����Ұž�',to_date('20/08/18','RR/MM/DD'),8,null,null,'sc',4);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'�ع氨 �̶�� ������ �׸���','���� ���Ͱ��� ���� �ϳ� ġ���� �� �Ϸ� ������� ���� �� �־��� �� ����..

���� ����� ���� ���� ����..

� �����̾����� ��ġ���� �ٽ� �������� �ʹ٤�','ũ��ũ',to_date('20/08/18','RR/MM/DD'),20,null,null,'sc',7);
Insert into ATEAM.COMMUNITY_SC (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (283,'���������Դϴ�','����','������',to_date('20/08/21','RR/MM/DD'),0,null,null,'sc',0);
REM INSERTING into ATEAM.COMMUNITY_SC_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,61,'ũ��ũ','3�� ���� ������ �����־ ���� ��Ƚ��ϴ� Ȯ�� ��Ź�����^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,61,'��','��� Ȯ�� �Ͻø� 010-0000-0000���� ���� �� �� ��Ź�帳�ϴ�!',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,61,'�ϴ�','�ѱ��� ���� �ʼ���..�Ф�',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (25,63,'�ϴ�','���� �������̿���!
�ƹ����� �ֽ�å���� �Ͻô� �� ��õ �帳�ϴ� ������ ���� ����ϰ� ����Ǵ� �κ��� �ִٺ��� �ֽ� å���� �����ϼż� �غ�����^^!',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (26,63,'��������','�� �׷�����..���� �����մϴ�^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (27,62,'��������','���� ���� �Դϴ�! ��� ���׿��� ���� �Ͻ� �����̽Ű���?',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (28,64,'��������','������ �ϴ��� �׻� �׷� �ñⰡ �����󱸿�Ф�
������ ��������� ��ǥ�� �̷����� �ູ �� ����� �����غ��ø鼭 ��������!^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (29,64,'��','���� ���� �ñ��̴� ��� ������ �޴� ���ϰſ���
ȭ���� �Ͻñ�ٶ��ϴ�.',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (30,62,'��','���� ������ �ִµ� ���� �� �� ��Ź�����^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (31,61,'��','1�� å�� ��Կ��� �絵 �Ϸ� �Ǿ����ϴ�~',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (32,65,'��','������ �֤��� ������ ���� �����ϴ�! Ŀ�´�Ƽ �������׿� ����� �� ������ ��д�۷� �˷������!^^',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (41,72,'���','���ݸ� �� ����Ͻø� �� ������ �� �����ſ���Ф�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (34,65,'��','�����մϴ�^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (35,62,'��','���� ���� �Դϴ� 010-0000-0000���� ���� �� �� ��Ź�����!',to_date('20/08/17','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (42,71,'���','���ε尡 ���� ���� �Ȱ����ó�...�ű���������...',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (43,70,'���','������ �������� ���� �߿��ϴ��󱸿�.',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (44,69,'���','�Ǳ⵵ �ΰ����� Ŀ�� ���� �մϴ�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (45,67,'���','������ ���ӽܰ� �Բ� ����غ��°� ���� ���� �� �����ϴ�!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (46,66,'���','��� Ȯ�� �Ͻø� 010-0000-0000���� ���� ��Ź�帳�ϴ�',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (47,68,'���','�ƽ����� �� �� �� ġ�ô°� ��õ�帳�ϴ�.
��Ż�Ͻø� �װŶ��� �׷��� �ϰ� ��ȸ�ϰ� ��Ÿ�ɴϴ٤�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (48,64,'���','�������߱⶧���� ���� �� �ִ� �����Դϴ�^^
�����ҰԿ� ���� ���� �� ���ô�!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (56,70,'�ϴ�','2222222222',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (50,71,'ũ��ũ','�������� �ڱ��̳׿�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (51,70,'ũ��ũ','����� ������ 2�Դϴ� ������ �ٴϴ°� �������� ���� �߿��մϴ�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (52,69,'ũ��ũ','�Ǳ� �ΰ� �����ø� �����մϴ�!!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (53,68,'ũ��ũ','���� �� �� �� ġ�ż� 1�� �븮�ô°� ��õ�帳�ϴ�...�Ф�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (54,72,'�ϴ�','����������� �� �� ���ƿ� ������ ��� �����ؾ� ���� �� ������ ���⵵ �ϰ�..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (55,71,'�ϴ�','�� �´¸��ΰͰ��׿�...',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (57,72,'��','ȭ�����սô٤̤�!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (58,71,'��','���� �´� ���Դϴ�..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (59,72,'��','������',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1087,72,'������','ȭ����!!!������',to_date('20/08/20','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1088,65,'������','�׽�Ʈ',to_date('20/08/20','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1089,72,'������','��д��',to_date('20/08/21','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1090,70,'������','��д��',to_date('20/08/21','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_SC_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (1086,72,'���ο�','������',to_date('20/08/20','RR/MM/DD'),'y');
REM INSERTING into ATEAM.COMMUNITY_UN
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (25,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/17','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/17','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (26,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (27,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/18','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (28,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/18','RR/MM/DD'),8,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (29,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/18','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (30,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/18','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (31,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/18','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (32,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/18','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (34,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (35,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (36,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (37,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (38,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (39,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),7,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (40,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (41,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (42,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (43,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (45,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (46,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (47,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (48,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (49,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (50,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (51,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (52,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (53,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (54,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (56,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (57,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (58,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (59,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (60,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (73,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (74,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (75,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (76,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (78,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (79,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (80,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (81,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (82,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (83,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (84,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (85,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (86,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (87,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (89,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (90,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (91,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (92,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (93,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (94,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (95,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (96,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (97,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (98,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (100,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (101,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (102,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (103,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (104,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (105,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (106,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (107,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (108,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (109,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (111,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (112,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (113,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (114,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (115,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (116,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (117,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (118,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (119,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (120,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (122,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (123,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (124,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (125,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (126,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (127,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (128,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (129,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (130,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (131,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (133,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (134,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (135,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (136,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (137,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (138,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (139,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (140,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (141,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (142,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (144,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (145,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (146,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (147,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (148,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (149,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (150,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (151,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (152,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (153,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (155,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (156,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (157,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (158,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (159,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (160,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (161,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (162,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (163,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (164,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (165,'[����/����]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','������',to_date('20/08/19','RR/MM/DD'),3,null,null,'un',0);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (166,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (167,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (168,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (169,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (170,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (171,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (172,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (173,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (174,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (175,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (176,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (177,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (178,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (179,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (180,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (181,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),7,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (182,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (183,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (184,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (185,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (187,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (188,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (189,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),14,null,null,'un',5);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (190,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (191,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (192,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (193,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (194,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (195,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.COMMUNITY_UN (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (196,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),12,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
REM INSERTING into ATEAM.COMMUNITY_UN_COMMENT
SET DEFINE OFF;
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (21,24,'�����Ұž�','3�г� �̽ô� �������� ����ô°� ���� �� �����ϴ� ������ ��� ����+�������� �غ�Ǹ� 4�г⶧ �ٷ� ���� ���� �غ��ô°� �����ϴ�.',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (22,24,'Ż���','���� ���ַ� �Ͻô°� ���� �� �մϴ�~^^',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (23,23,'Ż���','���θ� �ʿ� �ϳ� �����ϴ� ���� �����ô� ���� �� �����غ��ð� ���� �� ã�ư��ñ� �ٶ��ϴ�^^!',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (24,23,'����޳���','�� �ϰ� ��ʴϴ�. ������ ���� �ϰ���� �� ����غ�����',to_date('20/08/17','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (25,24,'�ϴ�','���� �� ���͵� ���������ϳ׿�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (26,23,'�ϴ�','�ʹ� ���θ��� ������ ������ ������ ���ϴ� ������ ���� ã�ƺ��ð� �׿� �´� �غ� �Ͻô°� ��õ�帳�ϴ�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (27,23,'��������','ȭ����!!!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (28,24,'��������','���� �ʼ��Դϴ٤Ф�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (29,25,'��������','��� ���Ͻô� ����� ��ǥ�� ��� ������ �غ�����^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (30,26,'��������','������ ���ô�!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (31,25,'�ϴ�','�����մϴ٤Ф�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (32,26,'�ϴ�','������ ���� �߿����� �ʾƿ�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (33,27,'�ϴ�','������ �߿��ϰ� �� ���� �������� ���� �� ���׿�..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (34,23,'��','���ϴ� �����ǥ�� �� �� ����������~
ȭ�����Դϴ�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (35,24,'��','��..��.........',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (36,25,'��','���� �мǾ��� ����� ���� �����ϴ�!
ȭ�����ϼ���^^!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (37,26,'��','���� ������ ��õ�帳�ϴ� ���������̶�� Ư�� �ܱ�� �ʼ��� �Ǿ������ �������?�Ф�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (42,27,'��','������ �߿��մϴ�!!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (39,27,'��','�� ������ ������ �켱�� �� �� ���ƿ�~',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (40,25,'��','�� ���� ������ ��õ�帮�� �ʽ��ϴ�.
�켱 �Ի��Ͻñ� ���Ͻô� ����� ��ǥ�� �����ð�  �׿� ���� �غ��غ��ñ� �ٶ��ϴ�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (41,26,'��','���� 3-2�� ���������� �ð��� �ֳ׿� �ð��� ������ ��ŭ ���� ������ �Ѱ��� �������� ���� �����°� ���ƺ�����.',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (43,28,'��','���� ��Ƚ��ϴ� Ȯ�� �Ͻø� ���� ��Ź�����~^^',to_date('20/08/18','RR/MM/DD'),'y');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (47,29,'����޳���','���л�Ȱ�� �ϱ� ���Ѱ��� ������ ������� �ݴ��ϰ� �ͳ׿�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (45,29,'Ż���','���н��� �ֺ��� �����Ѵٰ� ������ ������߿� ���ѻ�� �ƴ��̻� �� 1�� ��հ� ��� ������..�� �����غ����䤾��
�б���Ȱ ���°͵� �߿������� 3,4�г� �б���Ȱ�� ������ �����ϰ� �����ؾ��ϱ� ������..���� 1,2�г� ������ ��� �����°� ���ٰ� �����˴ϴ�',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (46,28,'Ż���','�Ǹ� �Ϸ� �Ǿ�����?',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (49,30,'�����Ұž�','���� �� �𸣰����� ���������� ���� ������ �� �� �ִ��� ��Ȳ�� ������ �ѷ����ô°� �����..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (50,29,'�����Ұž�','4�г��� ���� ����غ� ��â �Ҷ��� ���л�Ȱ�� ��� �� �����..�� �����غ��ñ�^^',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (54,32,'���','IT�� �븰�ٸ� ������',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (55,31,'���','����� ����� ���缭 �᳻������ ���� �ݹ� ���� �� �־�� ȭ����!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (56,30,'���','ȭ�����Դϴ�!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (57,32,'��','5��� ���� �����Ϸ�����',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (58,28,'��','�ǸſϷ��Դϴ�!',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (59,32,'��','�߰����� ��������..',to_date('20/08/18','RR/MM/DD'),'n');
Insert into ATEAM.COMMUNITY_UN_COMMENT (ID,PID,WRITER,CONTENT,WRITEDATE,SECRETREPLY) values (60,31,'��','ȭ�����Դϴ�!',to_date('20/08/18','RR/MM/DD'),'n');
REM INSERTING into ATEAM.D_DAYLIST
SET DEFINE OFF;
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('�߰����','2020�� 8�� 31��','2020�� 08�� 21��','������');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('fh','2020�� 8�� 26��','2020�� 07�� 30��','������');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('��ó��','2020�� 8�� 28��','2020�� 08�� 21��','������');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('djd','2020�� 8�� 20��','2020�� 08�� 17��','�Ӽ���');
Insert into ATEAM.D_DAYLIST (TITLE,PICKERDATE,D_DAY,NAME) values ('57','2020�� 8�� 26��','2020�� 08�� 17��','���ο�');
REM INSERTING into ATEAM.EVENT
SET DEFINE OFF;
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (48,'[��ǰ�ڶ�ȸ]��ϱ���û-���� ���� Ű��� ������ ��������','���ϵ�����û(������ ������)�� ''�ų��� ���ǡ������ϴ� �б����Բ� ���� �̷�''��� ���ΰ� �Ʒ� ���� ���� Ű��� ������ ���������� ����� ���� �ִ�.

���� 21�Ϻ��� 3�ϰ� �뱸 �����ڿ��� ���ֵǴ� �̹� ��ǰ�뱸��Ϲڶ�ȸ�� ���� ��ϱ���û�� ���� ��� ������ �ֿ� ��å �� ��� �� �Ұ��� ��ȹ�̴�.

�ڶ�ȸ�� ���� ������� �ִ� ����, ��ȭ�ϴ� �б� �������� �����ϴ� �̷����� ����ο��� ����� �ִ� �������� �������ϰ� �������� ���� ȯ���� ����� ���� û�� 15�� �μ��� ���ϴ� ��� ���� ���� ������ ������ ȫ�� �� �Ұ��� �����̴�.

��ϱ����� ��� ���̵��� �ڽ��� �̷��� ��ư� �� �ִ� ���� �⸦ �� �ֵ��� ������ٴ� ������, �ٱ�ħ���ٴ� ��ٸ��� �����ϰ� �ִ�.

�̸� �����ϱ� ���� ��ϱ���û�� �������߽��� �ʵ� �������� � ���� Ű�� �н����Ƹ� ���� ���̷����� �кθ� ��ī���� � ����?��?����л��� ���� �ι��� ��ī���� � ������޽� Ȯ�� ������б� ������ �ǽ� ����� �縳��ġ�� �������� �ǹ����� ���б��������� ���� ���� ���� �پ��� ����� �����ϰ� �ִ�.

������ �������� "�̹� ��簡 �̷� ��ϱ����� �������� �츮 ���� ��ȸ�� �̷��� ���̵鿡�� �������� �ִ� ������ �����ִ� ����� �ڸ��� �Ǳ⸦ �ٶ���"�� ���ߴ�.
','������',to_date('20/08/17','RR/MM/DD'),3,47,0,0,'imgUpload\2020\08\20\s_5aac8b73-80b3-4f34-8870-46d66c6c8d88_library-438389_1920.jpg','imgUpload\2020\08\20\5aac8b73-80b3-4f34-8870-46d66c6c8d88_library-438389_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (50,'[�뱸��]���� ���� �ִ� ''���� ���� �뱸'',  �ڷγ�19 �غ�','�뱸��(���� �ǿ���)�� �̹� �ڶ�ȸ�� ���� ''���� ����, ���� ����, ���� ����''�� ��� �����δ�. �پ缺�� ����, Ȱ��, ����, ������ ������ ���� �ǹ��ϴ� ''�÷�Ǯ �뱸''(Colorful DAEGU)�� �귣��� �ϴ� �뱸�� ��ä������ 2��28 ���ֿ�� �߻������� �ٴ�ȭ�� ����ζ�� �ڱ���� �������� �̷��� ���� ���ư��ٴ� ���� �ΰ��� �����̴�.

�뱸�� ����� �Ƹ��ٿ� ������ �ѷ��ο� �ְ�, ������ �������� ���������� ��õ�� �帣�� õ���� ȯ���� ���� ģȯ�� ��������̸�, 883���� ������ 250���� �����ϰ� �ִ� �뵵�ô�. ������ �Ƿ�, ��ȭ �� ������ �������� ��Ȱ ������ �����̴�. �ƿ﷯ �뱸��� ���սŰ��� ����� ��û ��û�� �Ǹ��� ���� �뱸�� ���ο� �̷������� ������ ��ȹ�̴�.

�뱸�� �ٴ�ȭ�� �̲� ���ô�. ������ ����� �Ｚ�� ź���� ���̸� 1960~1970��� ��������� ������� �ѱ��� ��������� �̲�����. �ֱٿ��� ���� �Ƿ�, ������, �̷��� �ڵ���, �κ�, ����Ʈ��Ƽ �� 4����� ������ ���� �̷������ �����ϴ� ���÷� ���ư��� �ִ�.

��� �Ÿ��� ���� ���̱⵵ �ϴ�. �뱸�÷�Ǯ�佺Ƽ���� �뱸ġ���佺Ƽ��, �뱸�����������佺Ƽ��, �뱸������������� �� ����� �پ��� ���� ��ſ� ���÷� �ŵ쳵��. ���� 2021�⿡�� ���谡����ȸ�� �����⵵ �Ѵ�.

Ư�� �̹� �ڶ�ȸ���� ''Again �뱸!''��� ������ �ڷγ�19�� �غ��� ����� �Ұ��� �����̴�.','������',to_date('20/08/17','RR/MM/DD'),2,49,0,0,'imgUpload\2020\08\20\s_60e40a16-8f3c-479b-8540-efc027c36abe_financial-2860753_1920.jpg','imgUpload\2020\08\20\60e40a16-8f3c-479b-8540-efc027c36abe_financial-2860753_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (52,'���ּ� �� ����� �� ����� 11�ֱ� �¾� �����α�����������ȸ','(����=���մ���) ����� ���� = ��(ͺ) ����� �� ������� 11�ֱ⸦ �¾� ���ֿ��� �� �� ������� ������ �ǵ��ƺ��� �����α���ȭ������ ����ȸ�� �����ߴ�.

���ֽô� 17�� ����������Ǽ��Ϳ��� ''2020 ����� �����α���ȭ����''�� ''���ѹα� ���� ���� 120�� ����ȸ'' �������� �����ߴ�,

��翡�� �̿뼷 ����� ����� ���ֽ���ȸ ����, ���ơ���ΰ� ��ȸ�ǿ� ���� �����ߴ�.

���� ������ Ŀ��, ����ȸ ����, ��ȸ��, ��� ��� �� ������ ����ƴ�.

�����ڵ��� ���ѹα� ������翡�� ū ȹ�� ���� ����ȭ��� 9�� ������ ������ ���� ���� 120�� ���ð��� ã�� ���г��������� 3��1�, �����л������, �к����� �� �������� ������ ������ ����ô�.

5��18����ȭ� ���ð������� ��� ������û�� ������� ���еǴ� 1980�� 5�� 27�� ���� ����� �� �ڿ��� ���� �̾߱⸦ �������Ƿ� �ٷ� �������� ü���ϸ� �׳��� �ǹ̸� �ǻ����.

''���Ƕ� �����ΰ�''�� ������ ����Ŭ ���� �Ϲ���� ������ �ڸ� ������ ����ߵ��������� ����� �¶������� ����ƴ�.

����Ŭ ���� ������ ���������� ���⸦ �ؼ��ϱ� ���� �����ʰ� �ù��� ������ �߿��ϴٸ� �� �� ������� ������ �����ʰ� 5��18���� �������� �̻��� ���� �ùε��� ��Ű� ����� �� ���� ���������� �Ͱ��� �ǰ� �ִٰ� �����ߴ�.

''����� ������ ������ �� 5��18�� �����''�̶�� ������ ���� �м�ȸ�ǿ� ���� ���̺����� ��ȫ�ɡ��۰�������ΰ� �ǿ��� ''�ѱ� ����ȭ�� �ѹݵ� ��ȭ''�� ������ �����ߴ�.

�̿뼷 ������ "���ִ� ���� ����� ������ �ô� ���Ű� ���Ǹ� ���� �ڱ������ ���� ������ ������ �ٷ� ���ȴ�. Ư�� ���ѹα� ����翡�� ���֡��αǡ���ȭ�� ������ �ѷȴ�"�� "���� ����� �� �ñ⿡ ���ε�, Ư�� ��ġ���� ���֡��αǡ���ȭ�� ������ �ǹ̿� ��ġ�� �ǻ���� ��Ⱑ ������ ���ڴ�"�� ���ߴ�.

����ȸ�� 11�� 8�ϱ��� ����������Ǽ��Ϳ��� ������.','������',to_date('20/08/17','RR/MM/DD'),4,51,0,0,'imgUpload\2020\08\20\s_b821413c-5984-49e3-8daf-df4f7c0d418b_tie-690084_1920.jpg','imgUpload\2020\08\20\b821413c-5984-49e3-8daf-df4f7c0d418b_tie-690084_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (54,'���� â���� �ڻ� �ǿ�ȭ ���� ����','�����ο� �ѱ���������� �����뿡�� ''���� â���� �ڻ� �ǿ�ȭ 

���� ����''�� �����մϴ�. 

 

â���� �ڻ� �ǿ�ȭ ���� ����� 

������ Ư�� �� �������� �ǿ�ȭ�ϵ��� ���ΰ� ü�������� �����ϴ� ���α׷�����, ���غ��� 3�� ���� 20�� ����ܿ� 

���� 150�� ��, 

��� 450�� ���� ���Ե˴ϴ�. 

 

���� �������� 

������ ��� ���������� �̿��� 

���ߵ��յ��� �����ϴ� 

������ ������ ������ 

���̿� ����ŰƮ ���ȭ ����� 

������ ��ȣ�� ������ 

���͸��������� ������ ���� ��ʰ� 

�Ұ��˴ϴ�. ','������',to_date('20/08/17','RR/MM/DD'),2,53,0,0,'imgUpload\2020\08\20\s_0b08e8bf-0c18-4b8e-a639-83208627b69c_work-5382501_1920.jpg','imgUpload\2020\08\20\0b08e8bf-0c18-4b8e-a639-83208627b69c_work-5382501_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (56,'AM 4��, ���� �̼����� ������','<�̻� �Ҽ� ���� -''������ �Ͻ�'' ��>

���� �ÿ� ����� �ټ�, ����, �ϰ�, ����, ��ȩ

�׸��� ��ȩ �ÿ��� �� �ñ���

����- ���� �����̶�� �� �콺�� ����� �ȴ�.��

  

�̻���

�� �ٸ� �ڱ� �ڽ��� ������ �ð��̶�� ǥ����

���� �� ��.

  

������ 4�á� ���� �ٷ� �� ���� ������

����� ����, ���ſ� �̷��� ȥ��� ������

�پ��ϰ� ǥ���ϰ� �ֽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),14,55,0,0,'imgUpload\2020\08\20\s_a7d0bace-2c5e-4114-8b0d-b97382f66bbd_back_img2.jpg','imgUpload\2020\08\20\a7d0bace-2c5e-4114-8b0d-b97382f66bbd_back_img2.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (58,'������� ���� ���� ����','�̹��� ����ȭ�����������¿�, 

�׵��� ����Ͻ� ����� �������� ���� 

���� ���� ������ �غ��غ��ҽ��ϴ�. 

  

�� ����ǥ�� ���� ��Ŵٸ� 

���� �ٷ� ���� �������� ����������!','������',to_date('20/08/17','RR/MM/DD'),2,57,0,0,'imgUpload\2020\08\20\s_24c6ef2f-50ad-4dc7-b401-e08fc7554fa3_children-593313_1920.jpg','imgUpload\2020\08\20\24c6ef2f-50ad-4dc7-b401-e08fc7554fa3_children-593313_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (60,'��â���ڶ�ȸ in ���֡� 8�� 20�� ���� ����������Ǽ��� ����','����5ȸ ���� â���ڶ�ȸ in ���֡��� ���� 8�� 20��~22�� ���� ����������Ǽ��Ϳ��� ���ֵȴ�.

�̹� ���� �ѱ��߼ұ��������������ȸ�� ����â�������Ź��� �����ϰ� ������������(��ǥ ȫ����)�� �ְ��Ѵ�. ���� ���ְ����������� �Ŀ��Ͽ� ���� ���ñ���� �����Ѵ�.

�̹� �ڶ�ȸ������ ���� ���������� �귣��� â���������� ���ڸ��� ���δ�. â���� �غ��ϰ� �ִ� ���� â���ڰ� ���� �ñ����ϴ� ���� â���������̶�� �亯�� ���� ����. ����â���ڴ� â���������� ���� ���ϱ⵵ ������ â���� �ϰڴٴ� ������ �԰� â���������� ã�´�.

����â���ڶ�ȸin���ִ� ����â���ڿ��� â�������� �پ��� �����Ͻ��� ���� �� �ִ� ��ȸ�� �����ϰ�, �ֽ� â�� Ʈ���忡 ���� �λ���Ʈ�� ���� �� �ִ� �پ��� ���α׷��� ������ �����̴�. SNS���� �پ��� �̺�Ʈ�� �������̴�.



2020���� ��޿� ���� ������ ��������� �̰߰� ���۵� �ؿ���. �ڷγ�19�� ���� Ȧ ������ �����ϰ� ��� ������ ũ�� �����ߴµ�, ��� ��ó�ؾ� ���� �𸣴� ����Ե��� ���Ҵ�. �׷� ����â���ڿ� �һ���ε��� ���� ���̳��� �غ� �Ǿ��ִ�. ������۴� �ֻ�� ��ǥ�� �����â�� ������å�� ������ ���� ���â���� �غ��ϰų� ���� �ܽľ��� �ϰ� �ִ� �һ������ ��޿� ���� �������� ���� �� �ִ�.

�������͸� Ȱ���� â������ ������������������ ������ �����̰����б� ����������â���濵�� ����� ������ ����â���ڿ� �һ������ ������. ������������ ������ ���� ������ Ȱ����� ����Ȱ��ȭ�� ���� ���������� ������ ¤���ش�. ���� �ڷγ�19�� ���� �Һ� ������ ��ȭ���� ���������� �̾߱��Ѵ�.

ī��â�� �� Ȩī�信 ������ ���� ������� ���� Ŭ������ �غ�Ǿ� �ִ�. �����Ŀ�Ǹ� ���������� �����ϴ� ����λ��̵尡 �غ��ϴ� Ŀ��Ŭ������ ����â���ڶ�ȸ�� �α� Ŭ������ 3ȸ° �̾����� �ִ�. 1�ο��� ������ Ŀ�ǳ��� �� �� ���� ���� �̾߱�� ���� ���뿡 ���� ������ �˷��ش�. 2�ο��� �÷��� �̿��� ������ ������ ����� ���ǰ� ����ȴ�. ���� ���忡�� �帳 ü�赵 �����ϸ�, Ŭ���� ��û �� ����3���� �帳�� �̴���Ʈ�� ����ǰ���� �����Ѵ�.

�������� �ڶ�ȸ���� ���� ����ũ ������ �ʼ��̰� ���� �濪 ��Ģ�� ö���ϰ� �ȳ��� �����̴�. ��6�� ���ؿ��� ���ֵ� ������â���ڶ�ȸ in ����� �����ϰ� ������ ������ �������� ������ ���ֿ����� ������ �ڶ�ȸ�� ��� �̾ �͡��̶�� �����ڴ� ���ߴ�.

�̹� �ڶ�ȸ�� ������������ Ȩ�������� ���� ����ǰ� �ִ� ''�������''�� ���� 5,000�� �������� ���������� �����ϸ�, ȸ������ �� 1�Ⱓ �������� ����Ǵ� ���� â���ڶ�ȸ�� �����ʴ� �ȴ�.

���� Ȩ������������ �������, �ֽ�â�� ������ �һ���� ���������� �ȳ��ϰ� �ִ�. �ڶ�ȸ ���� ���ǳ� ��û�� �������������� ���� �����ϴ�.

��ó : ���۽�Ʈ�̵��(http://www.thefirstmedia.net)','������',to_date('20/08/17','RR/MM/DD'),3,59,0,0,'imgUpload\2020\08\20\s_b8194023-b92f-4e1e-aac3-bafbd76c2c4a_hall-1489768_1920.jpg','imgUpload\2020\08\20\b8194023-b92f-4e1e-aac3-bafbd76c2c4a_hall-1489768_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (62,'��ȭ ���� - ������ �ش�, �ʿ��� ���з� ����','���ط� 34ȸ°�� ������ ''�ٷ��� ������''�� 

�ظ� �ŵ��Ҽ��� �پ �Ƿ��� ���� 

������ �شܵ��� ������ �̾����� �ִµ���.

 

���ش� ���� �ִ��� 37�� ������ �ش��� �����߽��ϴ�. 

  

���� �������� �Ƿ��� �����ְ� �ִ� ������ �شܵ�.

�׵��� ������ ���зθ� �ޱ��� �ֽ��ϴ�.

  

��ȭ���� �������Դϴ�. ','������',to_date('20/08/17','RR/MM/DD'),2,61,0,0,'imgUpload\2020\08\20\s_a6d55639-5622-4ccb-9460-74e354efd6a1_book-731199_1920.jpg','imgUpload\2020\08\20\a6d55639-5622-4ccb-9460-74e354efd6a1_book-731199_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (64,'�������ȸ, 4������� ��ȭ�� ���ظ� ���� Ư�� �ǽ�','�̳� ����δ� �� ��ũ�ѷ���(DELL Technologies) ����Ʈ��������� �ٹ��ϰ� �ִ� �ֱͳ� ������ �ʺ��Ǿ� �̷���ȸ�� �¿��ϴ� 4����� ���� �ô��� ��ȭ�� ��� ����ǰ� ������ �̿� ���� ����ȯ�� ��ȭ�� �����κ��� ��� ��ó�� ������ � ���� Ȱ���ʸ� �߽����� ���ǰ� ����ƴ�.

Ư�� �����ڵ��� ���� ���ð� �Ȱ� �ִ� ȯ��, ���� �׸��� �ְ� �� ��ȸ������ �ذ��ϰ� ������ ���� ������ ������ ���Ͽ� ������ ���ű���� Ȱ���� ����Ʈ��Ƽ�� �ָ�������, ����ÿ� �´� ����Ʈ��Ƽ ȯ�������� ��� ����� ���� �ϴ����� ���� ����� �� �ִ� ����� �ڸ����ٰ� ���ߴ�.

���μ� ������ �������� ������ ȯ�� ��ȭ�� �����ϰ� �̸� �����о߿��� Ȱ���ϰ� �ִ� ��ʸ� ���� �츮 �ÿ����� ���������� �ù� ��Ȱ�� ������ �о߿� �̸� Ȱ���� �� ������ �� �� �ִ� �ǹ� �ִ� �ð��̾��١��� ��������, ������ ����� ��ȸ�� 4������� ���ű���� �����о߿� �� Ȱ���Ͽ� �ù��� ���� ���� ���̰� ������ ����ø� ����µ� ���������� ����� �����̶�� ������.

�̹� ��ī���̴� �ڷγ�19 ������ ���Ͽ� �ҵ� �� �����濪��ġ �Ϸ� �� �ּ� �ʿ� �ο��� ������ ��� ����ƴ�.

��ó : �̴���������(http://www.enewstoday.co.kr)','������',to_date('20/08/17','RR/MM/DD'),8,63,0,0,'imgUpload\2020\08\20\s_aae34be2-c08e-4cd0-a78e-79d3ce4f489d_entrepreneur-1340649_1920.jpg','imgUpload\2020\08\20\aae34be2-c08e-4cd0-a78e-79d3ce4f489d_entrepreneur-1340649_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (66,'����������û, ''4�� ������� â������ ��������''','�󳲵�����û(������ �弮��)�� 4�� �������ô뿡 ����� ����缺�� ���� ���� ��������а� ������ â������ ���������� ��ȭ�ϰ� ������.

���󳲵�����û�� ����â���������ż���, ��õ���б�, ���ֻ������տ��� ������ ���������� ������ ����ũ(fitech), �����ڵ��� ������ e-�����Ƽ, ÷�� ������������ �̷������ΰ����� 8������ ���� ��Ѵٰ� 10�� ������.

��������û, 4�� ������� �ô� â������ �������� � 
����ũ(fitech)������ ������ �л����� ������� ����â���������ż��Ϳ� ������ ���� 8�� 8�Ϻ��� 10������ ����(���������)�� ��õ(��õû�ϰ�) �������� �� 20���� �л��� ������ ��� ������. �� ���������� ����ũ ���� ������ ���� ���̽� ���α׷���, ������ AIȰ��, ������ ���ü��, ������ �м� �� ���� ���� �����Ѵ�.

e-������������� ������� �л� 20���� ������� 8�� 13�Ϻ��� ���������彺�Ŀ��� ���ֻ������տ��� ������ ��Ǹ�, e-�����Ƽ ����, ��������, ����Ŀ�� � ���� ���������� �����Ѵ�.

��������û, 4�� ������� �ô� â������ �������� � 
�̷�Young���Ѱ����� ���� 6������ ��õ���б� ����������� ������ ������ �л� 20���� ������� ���۵�����, 8�� �� ���߱����� �ǽ��Ѵ�. �� ���������� ���ȯ�漭��, �������ü�����, �������, �����ճ���, ����깰���� �о߷� ���� ÷�ܱ���� ������ �ǽ��� �ϰ� �ȴ�.

������ �̷���������� ������� �������� �ϴ� ������� �л��鿡�� 4��������� �ô뿡 �ް��ϰ� �ٰ����� �ִ� ÷�ܱ���� �ΰ�����(AI)�� �н��� �� �ֵ��� ��ȸ�� ���������ν� ������ ���̵��� �̷� �������� ����� �����ϵ��� ���ڴ١��� ���ߴ�.

��ó : ������Ŀ(http://www.newsworker.co.kr)','������',to_date('20/08/17','RR/MM/DD'),44,65,0,0,'imgUpload\2020\08\20\s_e4ea38bb-931c-426b-a002-a3e2348523aa_lecture-3986809_1920.jpg','imgUpload\2020\08\20\e4ea38bb-931c-426b-a002-a3e2348523aa_lecture-3986809_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (68,'������ ��1ȸ ������ �м����� �߱� ������','����Ư����ġ��(���� ������)�� �����Ϳ� ����� ������ ���� �� ����Ʈ��Ʈ ������ ���� �ù��� ���� ������ Ȱ�� ���̵� �����ϴ� ����1ȸ ������ �м����� �߱� ���̵�� ���������� �����Ѵ�.

�̹� �������� ������ ���� �߱��� �ذ� ������ �ù��� �����ϴ� ���μ����� �����ϱ� ���� ������, ���� 10�� 5�� 18�ñ��� �̸���(abigcity@korea.kr)�� ���� ���� �޴´�.

���������� ��å����, ���ù���, ����Ʈ���� �� ���� ���� �����Ӱ� ������ �� ������, ����� �� ���� ������ ���� �Ǵ� �� ������ ������ �����ϴ�.

�ɻ�� 1�� ������(����ε�)���� 10���� �����ϰ�, 2�� ���� ��ǥ�򰡿��� �߿䵵, Ȱ�뼺, ȿ����, �ı޼� ���� ���� ���������� �ֿ�� 1��, ��� 2��, ��� 3���� �����Ѵ�.

�ô� �̹� ��ȸ���� ������ ��ʸ� ��ȭ�� ���� ��å�� Ȱ���� �����ϵ��� �ý��� ���ࡤ�м��� Ȱ���ϰ�, ������ ���� ����� ���� ����� �Ƿ��� ��ȹ�̴�.

����� ����Ʈ���ð����� ���̹� �������� �ùε��� ����Ʈ�� ���̵� ������ �м��� ���� ��å���� �ݿ��Ǵ� ���μ����� �����ϴ� ������ ������ �Ź��ͽ� ������ ù ���߰� �� �͡��̶�� �������� �ִ� ������ ������� ���� ������ �ٶ��١��� ���ߴ�.

���۱��� ? �ұ������� �������� �� ����� ����



��ó : �ұ�������(http://www.bzeronews.com)','������',to_date('20/08/17','RR/MM/DD'),11,67,0,0,'imgUpload\2020\08\20\s_96da0b21-b5c9-447f-b9b8-fe3691872a4b_hall-1489768_1920.jpg','imgUpload\2020\08\20\96da0b21-b5c9-447f-b9b8-fe3691872a4b_hall-1489768_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (70,'KT, �ΰ����� ����ü ''AI ���͵���ũ'' ����  ','KT�� ���п� �ΰ�����(AI) ����ü�� AI ������ �̴� 21�ϱ��� ''AI ���͵� ��ũ''�� ���� AI/DT(Digital Transformation)�� ���� �¶��� �н� ���� �������� �����Ѵٰ� 10�� ������.

AI ������ AI ����缺�� ��� �� ���� ��ȭ, ������ ���°� ���� �� ''���ѹα� AI 1�� ����''�� ��ǥ�� ���� 2�� ����ߴ�. �Ѿ��, �ѱ����б����(KAIST), �ѱ�������ſ�����(ETRI), �����߰����׷�, LG����, LG���÷���, �ѱ���������, KT�� �����ϰ� �ִ�.

�̹� �¶��� ������ ������ AI ����缺�� ù �ܰ�μ� AI ���� Ȯ�븦 ���� ����̴�.

AI ������ "4�� ������� �ô� ���� AI �����η� �缺�� �ñ��� ��� �� ���� ����� AI�� ���� �İ��� Ű��� �͵� �߿��ϴ�"�� "AI ���� ���� ���鿡���� �ʱ� ������ ���� ���䰡 ���� ����"�� �����ߴ�.

�����Ǵ� �������δ� KT ���� ������, ���� ���̺� ���̳�, �ܺ� ��� ���� ������, AI ���� ��ü ���� ���� ���� �ִ�.

AI ������ �����ε� ���� �������� ������ �����ϰ� ��������� ��ü ���� ���α׷��� ���� ���°� �������� Ȯ���ذ� ��ȹ�̴�.

AI ���� �繫���� "�� ���� ����� AI�� ������ ���� �����ϴ� ���� AI 1�� ������ ���� �������̶� �����ϰ� AI ������ ���弭�ڴ�"�� ���ߴ�.

AI ���͵� ��ũ ���� �������� KT ȫ���� ��α� ''��ȭ��2���ⱸ''�� AI ���� Ȩ���������� Ȯ���� �� �ִ�.



[��ó: �λ��Ϻ�] http://www.busan.com/view/busan/view.php?code=2020081014545106086','������',to_date('20/08/17','RR/MM/DD'),33,69,0,0,'imgUpload\2020\08\20\s_428c00a2-5782-433c-bafc-c09a3ef65a51_student-849826_1920.jpg','imgUpload\2020\08\20\428c00a2-5782-433c-bafc-c09a3ef65a51_student-849826_1920.jpg');
Insert into ATEAM.EVENT (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (72,'LINC+�����, TPDM Ʈ�� ����ȸ�� ����&īī�� Ư�� ����','�������б�(���� ���ȿ) LINC+ ������� ���� 20�� ������ ������� 629ȣ���� �������÷��� D&M(TPDM) Ʈ�� ����ȸ�� ����&īī�� Ư������ �����Ѵ�.

�̹� Ư���� �������λӸ� �ƴ϶� �¶������ε� �����ϸ�, �������� Ư���� �ڷγ�19 �濪 ��ħ�� �ؼ��� ����ȴ�.

TPDM Ʈ���� ��Tourism Platform Design & Marketing Track���� ���ڷ� 2020�� 2�б���� ó�� ����Ǵ� �ű� ���������̴�. TPDM ����ȸ�� ���� TPDM ���������� ���� ���� ������ �߿伺�� �л����� �ñ��� ������ �ȳ��ϰ� �ȴ�.

�̹� ��翡���� ���۰� īī���� ��� Ư���� ����ȴ�. ���ۿ����� ���� �¶��� ��Ʈ�ʽ� �׷� ������ Ư���� �þҴ�. ���� Ư���� �������� �����ð� ������ �м� Ʈ���塯�� ���� �����̴�.

īī���� īī�������Ƽ �����а������������� �������Ƽ �����ͷ� ���� �ڷγ� �ô� ��Ȱ�� ��ȭ����� �������� Ư���� �����Ѵ�.

�¶��� Ư���� �����Ϸ��� ������ ��û ���� Ư�� ���Ͽ� ������ URL(https://sejong.webex.com/meet/jaemun.byun)�� ���� ������ �� �ִ�. �ð��� ���� 1�� 30�к��� �ǽð����� ����ȴ�.

��Ÿ ���ǻ����� LINC+ ����� TPDMƮ��(02-6935-2742)�� �����ϸ� �ȴ�.

��ó : �����Ź�(http://www.kyosu.net)','������',to_date('20/08/17','RR/MM/DD'),50,71,0,0,'imgUpload\2020\08\20\s_bfc35734-fe6f-40ef-9d71-ca73a343b7bc_conference-room-768441_1920.jpg','imgUpload\2020\08\20\bfc35734-fe6f-40ef-9d71-ca73a343b7bc_conference-room-768441_1920.jpg');
REM INSERTING into ATEAM.FRIEND
SET DEFINE OFF;
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('������','������','a1','����غ��');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('������','�Ӽ���','subin','������');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('������1','�Ӽ���','subin','������');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('2','���','msun@naver.com','��û�');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('������','���ο�','c1@naver.com','���л�');
Insert into ATEAM.FRIEND (USER_NAME,NAME,EMAIL,JOB) values ('������','��������','uni@naver.com','�ʡ��ߡ�����л�');
REM INSERTING into ATEAM.MEMBERS
SET DEFINE OFF;
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('a1@naver.com','������','1234','����غ��',to_date('20/07/29','RR/MM/DD'),'n','n',2);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('a@naver.com','������','0000','����غ��',to_date('20/07/29','RR/MM/DD'),'n','n',3);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('33@naver.com','2','2','��',to_date('20/08/12','RR/MM/DD'),'n','n',7);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('dd@naver.com','������ھ���','0000','����غ��',to_date('20/08/18','RR/MM/DD'),'n','n',54);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('admin','������','0000','������',to_date('20/08/13','RR/MM/DD'),'y','n',21);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('msun@naver.com','���','Aa1111','��û�',to_date('20/08/13','RR/MM/DD'),'n','�л�',22);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('wingkar','������','0000','����غ��',to_date('20/08/13','RR/MM/DD'),'n','�л�',23);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('2929@naver.com','����','0000','����л�',to_date('20/08/17','RR/MM/DD'),'n','n',41);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('c1@naver.com','���ο�','0000','���л�',to_date('20/08/17','RR/MM/DD'),'n','n',43);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('subin@naver.com','�Ӽ���','0000','������',to_date('20/08/17','RR/MM/DD'),'n','n',44);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('aa@naver.com','�����Ұž�','0000','����غ��',to_date('20/08/17','RR/MM/DD'),'n','n',46);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('bb@naver.com','����޳���','0000','���л�',to_date('20/08/17','RR/MM/DD'),'n','n',47);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('cc@naver.com','Ż���','0000','��Ÿ',to_date('20/08/17','RR/MM/DD'),'n','n',48);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('hong@naver.com','��','0000','��Ÿ',to_date('20/08/17','RR/MM/DD'),'n','n',49);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('sun@naver.com','��','0000','�ʡ��ߡ�����л�',to_date('20/08/17','RR/MM/DD'),'n','n',50);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('sky@naver.com','�ϴ�','0000','�ʡ��ߡ�����л�',to_date('20/08/17','RR/MM/DD'),'n','n',51);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('uni@naver.com','��������','0000','�ʡ��ߡ�����л�',to_date('20/08/17','RR/MM/DD'),'n','n',52);
Insert into ATEAM.MEMBERS (EMAIL,NAME,PW,JOB,JOIN_DATE,ADMIN,PARENTS,ID) values ('cream@naver.com','ũ��ũ','0000','�ʡ��ߡ�����л�',to_date('20/06/17','RR/MM/DD'),'n','n',53);
REM INSERTING into ATEAM.MYLIST
SET DEFINE OFF;
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[���ػ�]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),0,null,null,'job',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'[���]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),0,null,null,'go',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (11,'[������]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','2',to_date('20/08/15','RR/MM/DD'),0,null,null,'emp',1);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (6,'[��Ÿ]ī�װ��� Ŀ�´�Ƽ �Դϴ�.','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
- GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� ����� �����մϴ�.
���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.','2',to_date('20/08/15','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'OOOOO �λ��� 1�� ���� ��� ������ ��?','�λ��� 1�� ���� ��� ������ ��?','Ż���',to_date('20/08/17','RR/MM/DD'),0,null,null,'job',2);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'������ vs �������� ������','1. ������
�������� ���δ뿡�� ���ΰ� �Բ� �ٹ��ϴ� Ư���� ������ �Դϴ�.
���� �������� �����η��� �����ϴ� ���� �η��̾����ٸ�
���뿡 �ͼ��� ����� ������ ������, ���Ӽ��� ���� ���������μ� ������ ���Ե˴ϴ�.

2.��������
���������� ���ְ����μ� �Ϲݺ��縦 ���� ����ϰų� Ȥ�� ����μ� ���ְ��� �����Ͽ� ����, ����, �λ�, ���� �� ���� ������ �����մϴ�.
�ܺ��� ��� ������ �������κ��� ������ �����ϰ� ������ �����ϸ� ������ ������ ��ȭ���� ��ȭ�� ��Ű�� ���� �մϴ�.

3. �������� �ϴ� ��
�������� �����, ����, �ر�, ������ ��� ������ ���������繫, ����, �� ���� ���� ���� ����ϰ� �˴ϴ�.
����, ����, ����, ��� �� �q�ĺ��� �پ��� ������ ����ϰ� �˴ϴ�.

4.���������� �ϤӴ� ��
�Ϲݺ��� �������, ����, ����, �λ�, ���� �� ���� ������ �����մϴ�.
����, �߿�ü��� ���� ���, �����Ⱓ����� ��ȣ, ȯ�溸ȣ Ȱ�� ����, �������� ����, ����, ���� �� ��ȭ���� Ȱ��, �ؾ���۷� ��ȣ ���� ���� �մϴ�.','�����Ұž�',to_date('20/08/17','RR/MM/DD'),0,null,null,'go',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (23,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/17','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/17','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (24,'���� �����Ȱ �������ϴ�','������������ �����ϰ� ��䵵 ���ߴµ� �����ֿ� �հ��ߴٰ� ������ �Խ��ϴ٤Ф�
���� ��� Ż���߽��ϴ�.
ó��� ������ �� ȸ�纸�� �����ϴ� ������ ����ϳ� ������, �μ�Ƽ�� ������׿�
���� �ູ�մϴ�.
�� ���� �� ��� �����߽��ϴ�. GOOD PARTNERȸ���Ե鵵 �� �� ������ �� �� �� ȭ���� �Ͻø� ���� �� ���� �̴ϴ� ȭ����!!!!!!!!!!!!','���',to_date('20/08/18','RR/MM/DD'),0,null,null,'job',2);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'��ȸ��Ȱ ����� �е��� ���� �����ϴ� �� �װ��� �˷��帳�ϴ�.','1. ��ȸ�� �������� ������ ��������� �����϶�

2. ��ġ�� ���� �������� �η�η� ģ�ض�.

3. �� �㹰�� ���� ������ �ϱ� ���� Ÿ���� �㹰�� ���Ƶ� ����ġ�� �����ִ� ����� �Ƕ�.

4. ���ϴٰ� �����ϴ� ����� ��ų� �����ؼ� �̵��� ���һ����� ���� ���� ����.

�̻� ���� ���� �� Ȥ�ó� �ΰ����迡 ����� �е��� ���� ����ý��ϴ�.
����� ����Ǽ���^^','���',to_date('20/08/18','RR/MM/DD'),0,null,null,'emp',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (25,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (26,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (27,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (28,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/18','RR/MM/DD'),0,'�濵�� ����.JPG','/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (29,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (30,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (31,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/18','RR/MM/DD'),0,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (32,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/18','RR/MM/DD'),0,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (34,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (35,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (36,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (37,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (38,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (39,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (40,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (41,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (42,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (43,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (45,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (46,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (47,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (48,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (49,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (50,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (51,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (52,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (53,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (54,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (56,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (57,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (58,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (59,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (60,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (61,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (62,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (63,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (64,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (65,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (67,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (68,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (69,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (70,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (71,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (72,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (73,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (74,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (75,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (76,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (78,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (79,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (80,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (81,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (82,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (83,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (84,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (85,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (86,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (87,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (89,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (90,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (91,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (92,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (93,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (94,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (95,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (96,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (97,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (98,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (100,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (101,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (102,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (103,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (104,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (105,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (106,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (107,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (108,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (109,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (111,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (112,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (113,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (114,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (115,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (116,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (117,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (118,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (119,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (120,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (122,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (123,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (124,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (125,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (126,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (127,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (128,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (129,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (130,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (131,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (133,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (134,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (135,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (136,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (137,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (138,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (139,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (140,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (141,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (142,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (144,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (145,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (146,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (147,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (148,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (149,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (150,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (151,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (152,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (153,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (155,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (156,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (157,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (158,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (159,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (160,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (161,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (162,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (163,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (164,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (166,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (167,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (168,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (169,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (170,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (171,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (172,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (173,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (174,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (175,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (176,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (177,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (178,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (179,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (180,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (181,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (182,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (183,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (184,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (185,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (187,'��� VS ����','��� �ٵ� ��� �ǽó��� Ư�� �мǾ����̿�..
������ 24���ε� �׳� �����̶� �����ұ��
���� ��ġ�ڳ׿� �з¶����� ����� �ȵǴ°��ϱ��','�ϴ�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (188,'������ 2�г� ���� ���ɾ ���� ��Ź�帳�ϴ�','����б� 3�г� ���� ����� �غ��ϴٰ� �ʱ⿡�� ���ʹ� ���������ϴ�.
�׸��� ���� ���� ������������ ���������ϴ�.
������ �޵� ���� ������ �����ؼ� ���� ���� ������ڶ�� ���ε�� �����뿡 �Խ��ϴ�.
�ٺ������� ���� ����� ���°� ���������� �� �𸣰ھ��.
�ֺ�������� ������ ��õ���� ������� ���ڰ� �ϴ�, ����б� 3�г� ������ ���ʹ� �������� ncs�� �ٽ� �ؾ� �� ������ ���� ū �źΰ��� ��ϴ�.
��𿡶� �� ����� ����; �߱������ϰ� ���� �ý��ϴ�.
ȸ���Ե� ������ ������ �ִ� �״�� ������ ���� ���ּ���....','�����Ұž�',to_date('20/08/19','RR/MM/DD'),9,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (189,'���� ���б� �غ��ź� ��Ű���?','2�г� 2�б⸦ ���б�� �ٳ���ϴ�.

�̹��⵵�� 2�г� 1�б⸦ ������ ���� 2�г��� ��ģ �����ε� 3�г� 2�б⸦ �� ���б�� ���� ����Դϴ�.

���� ������ �ϰ� �Ǹ� ��� �ϴ°� ȿ���� �ϱ��?
������ �Ѵٸ� ����, �������� ������ �ϰ� �ֽ��ϴ� ���� ���� ��Ź�帳�ϴ�.','����޳���',to_date('20/08/19','RR/MM/DD'),12,null,null,'un',5);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (190,'���л� 3�г� �̷����� ����Դϴ�.','���� 3�г� 2�б⸦ �յΰ� �ִ� ���л��Դϴ�
����� �����ؾ��ϴµ� �� ��� �����ؾ����� �𸣰ھ��
�����̶� �Ҹ��� �͵� ����..���� �����п� �ٴϴµ� ���� ���ʹ� �ٴϰ� �ֽ��ϴ�.

������ 3.4������ ���������� ���մϴ�

�������� �ٴϰ� �ִµ� ���� �ñ��� ������ ��� ����ϱ⿣ ������� ũ����....
������ �����ϰ� �ִµ� �ƹ��� ������ ������ �� ���� �����ϳ׿�

�������ϰ� �� ���� ã�ƺ������� �׳� �ٷ� �����ؾ��ϴ°����� ��ε˴ϴ�. �� �ñ⿡ � ������ �ؾ��ұ��..?���� ��Ź�帳�ϴ�..','ũ��ũ',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',4);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (191,'�Ϲ� ���� �غ��źе� ���� ��Ź�帳�ϴ�','�������� �� ����ٴϴٰ� ���ϴ� ��� ������ǥ�� �Ϲ� ������ �������Դϴ�.
�ٸ��� �ƴϰ� ���� �����ϰ��� �ϴ� �б��� ���Ա����� ���ξ��м��� 6:����4�� �����̴�����
���ξ��м����� �������� �غ��Ѵٴ� ������ ������ ������ 500�� �̻��̴���
�հݼ����� ���������� ���� �������� �ƴϸ� ���� �̻� ������ �������� �հ��� �ϴ��� �ñ��մϴ�.','��������',to_date('20/08/19','RR/MM/DD'),7,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (192,'[��å]�濵�п��� (�ǸſϷ�)','���� 48000
�ǸŰ� 40000(�ù�����)

�����ð� ����غ��ϸ鼭 �� å, �� å ����� �� �� ���� ����ϴ�.
���м�ó�� �ѵα� �߿��Ѱ� ��ΰ� �޴޿ܿ� �������� �������� ��� ������ �� å�� ���
���ڸ��� �ٷ� ����� �����߽��ϴ� å�� ���� ����� �־����� ������ �� å�� ��ô� �е� �� ���� ���� ����� �̴ϴ�.

-��밨 ��������. �ѹ��� ��� ���ĺ��� �ʾҽ��ϴ�.
-���м��� ���� å �߰��� ����&�ؼ��� �����־� �̷� ���� �� �������� ����ż� �����ϴ�.

���� �� ��� �޾��ּ���~','��',to_date('20/08/19','RR/MM/DD'),6,'/upload/un/2020/08/18/be281f2e-2bed-4682-911c-2dea4fb775ad_�濵�� ����.JPG',null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (193,'4�г� 1�б� ��ġ�� 1�� ���� �����Դϴ�.','���� �μ��� ������а��� ������ 3�г� �Դϴ�.

���� �����ϰ��� �ڷγ��� ������ 1�б�� ���� 2�б⵵ ������ Ȯ���Ǿ ���ش� �б���Ȱ�� ���ϰ� �ƽ��ϴ�
�׷��� �����غ��� 4�г� 1�б���� �б��� �ٴϰ� 1�� ������ �ұ� �������Դϴ�.
�ֳĸ� �̶����� �ٴϰ� ���бⰣ���� ����ڰ����� ���� ������ �ּ��� ������ �ϰ� �ֽ��ϴ�.
���⿡�� �б���Ȱ�� ���غ��� �����ϸ� ���� ������ ����� �� ���Ƽ� �����̶� �� ���б⸸�̶� ����� �� �б���Ȱ�� ���� �; ������Դϴ�.

4-1��ġ�� 1�� ���� ���������?','��',to_date('20/08/19','RR/MM/DD'),4,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (194,'����� ������ ���� ���ϴ�..','���� 5���� �Ѱ� ���� ���� �� ������ ������ ���� ȸ�ǰ��� ������ 4�� ������ �ٴϴ� ȸ�縦 �׸��ΰ� 6������ �޴�������, ������ 1�������� �Ƹ�����Ʈ�ϸ� ��Ȳ���̿���....
���� ���� �� �״�� ���ε��� ǥ���ϴ� ����Դϴ�.
������ ���� ���� �� �������� �ڷγ��� �׷��� �ܱ�˹ٵ� �ȱ������� ��� �˹ٴ� ���̶����� ����ҰŶ� �����ϴ��� �̾������� �ʽ��ϴ�..
�� ��� ��ư��ߵɱ�� ������ ���� ��Ź�����..','����޳���',to_date('20/08/19','RR/MM/DD'),6,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (195,'�ڼҼ� �󸶳� �߽�� �Ǵ� �ǰ���','�ʹ� �������� �ᵵ �ȵɰ� ���� �����ϰ� �ᵵ �ȵɰŰ���
���� ���������̶� ���� �� �巯�����Ѱ� ���µ�..','�����Ұž�',to_date('20/08/19','RR/MM/DD'),5,null,null,'un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (196,'ssafy�� ���� �˰� ��Ű���?','5�� ������ ���� �ٰ����� �ִ� �� ������ �𸣽ô� �е��� ���� SSFAY�� �Ұ��帮�� �մϴ�
��������� ������ 4���� ���� ������ �Ǵ� 8������������ �� �� 29�� ���� ��������Դϴ�.
SSAFY �����Ⱓ�� 1�Ⱓ ����Ǹ�
SSAFY ���� ��Ҵ� ����, ����, ����, ���̿��� ����˴ϴ�!
�Ʒ� SSAFY 4�� ��������� �Բ� �ڼ��� ���캼���~','ũũũ',to_date('20/08/19','RR/MM/DD'),5,'SSAFY.JPG','/upload/un/2020/08/18/25d3a612-09da-496f-b6d2-c4c75ae9fe30_SSAFY.JPG','un',3);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (21,'ī�װ� ��Ÿ�� �۾��� �׽�Ʈ','�׽�Ʈ�Դϴ�.','������',to_date('20/08/19','RR/MM/DD'),0,null,null,'etc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (283,'���������Դϴ�','����','������',to_date('20/08/21','RR/MM/DD'),0,null,null,'sc',0);
Insert into ATEAM.MYLIST (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,CATEGORY,COMMENTCNT) values (22,'������ �� �׽�Ʈ�Դϴ�','������ �� �׽�Ʈ','������',to_date('20/08/19','RR/MM/DD'),0,null,null,'emp',0);
REM INSERTING into ATEAM.NOTICE
SET DEFINE OFF;
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('�г��Ӱ� ī�װ��� ���� ���� ����','�ȳ��ϼ��� Smart patner ����Դϴ�.

�ֱٵ�� ���� �̿��ڰ� �������鼭 

�ǵ������� ������ ��г��ڰ� �ϴ� �г��ӵ���
��������, �̿� ���� ���� �е��� �������ϰ� ���ظ� �԰� �ֽ��ϴ�. �Ӹ��ƴ϶� ���� ī�װ��� 
�ƴ� ���� ���� ������� �����ϰų� �������� �Խù����� �ø��� ������ �����ϴ�.

8���߿� Ŀ�´�Ƽ ������ �۾��� ���� �� �������� �ذ��ϰ��� ������, ����ɶ����� ����ؼ� ������ �̾����� ���Ƽ� �켱������ ī�װ� ���� ���ѱ���� �߰��մϴ�.

2020�� 8��1�� ���� ī�װ� ������ �� 1ȸ Ȥ�� ��1ȸ�� �����մϴ�.

Smart Partner �帲','20.08.09','admin');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('���� �� ASMR �߰��� ���� ����','�ȳ��ϼ��� Smart Partner ����Դϴ�.

�ֱٵ�� ���� ����ڰ� �������� ���� �������� ������ ASMR�� �߰��ش޶�� ���ǰ� �������� �ֽ��ϴ�.

���� ���� ���� �� ASMR ���� �߰��� ���� Ȯ���ϰ� ������, ���� �߰��� ������ �˷��帮�ڽ��ϴ�.

Smart Partner �帲','20.08.09','admin');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('1.1.1 ������Ʈ','.','20.08.21','������');
Insert into ATEAM.NOTICE (TITLE,CONTENT,TODAY,NAME) values ('1.1.3������Ʈ','.','20.08.21','������');
REM INSERTING into ATEAM.OPINION
SET DEFINE OFF;
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (110,'[���]�� ID������ �ϰ� ������ �����Ѱ���? �� ���� �亯�帳�ϴ�.','�ȳ��ϼ��� ��״�

GOOD PARTNER ������ �Դϴ�.

�ѹ� ���Ե� ���̵�(ID)�� ������ �Ұ����մϴ�.

���̵�(ID)�� �����Ͻ÷��� GOOD PARTNER���ͳ� ����Ʈ�� 
ȸ�� Ż�� �� �ٽ� [ȸ�� ����] �� �ϼž� �մϴ�. 

�г��Ӱ� ��й�ȣ ������ ������ ��ܸ޴��� ���������� �����Ͻ� �� ���� ��Ź�帳�ϴ�.

�����մϴ�^^
','������',to_date('20/08/17','RR/MM/DD'),5,null,null,107,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (108,'ID������ �ϰ� ������ �����Ѱ���?','ID������ �ȵǴ°ǰ���?','���',to_date('20/08/17','RR/MM/DD'),5,null,null,107,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (112,'ȸ�������� �� ���������� �����ϰ� ��ȣ�ǳ���?','�����ϰ� �� ��ȣ �Ǵ� �� ����?','����',to_date('20/08/17','RR/MM/DD'),3,null,null,111,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (114,'[����]�� ȸ�������� �� ���������� �����ϰ� ��ȣ�ǳ���? �� ���� �亯�帳�ϴ�.','�ȳ��ϼ��� ���ϴ�

GOOD PARTNER ������ �Դϴ�.

GOOD PARTNER ����Ʈ�� ��� ȸ�������� 
GOOD PARTNER�� ����ȸ�� ��å�� ���Ͽ� �����Ǹ� ���� �ٸ� ������
������� �ʽ��ϴ�. 

����, ȸ������ ����Ʈ �̿� ���� �̿��� �ٸ� �������� ������
�ʽ��ϴ�.

ȸ������ �� �Ǵ� ����Ʈ �̿� �߿� ȸ���Բ��� �Է��Ͻ� ���
������ "������Ÿ��̿����� �� ������ȣ � ���� ����"��
�ؼ��Ͽ� �����ϰ� �����˴ϴ�. 

ȸ��Ż�� �ÿ��� ����Ұ����� ����� ����� ����Ͽ� ȸ������
��� ���������� �ı��ϰ� ������ �ٽ� �������� �ʽ��ϴ�.

���� �ڼ��� ������GOOD PARTNER ����Ʈ�� ��� �� ��������
��ȣ��å��  �����Ͻñ� �ٶ��ϴ�.

GOOD PARTNER ����Ʈ�� ������ ȸ������ ������ ���� �׻� ����ϰ� �ֽ��ϴ�.

* ȸ�� ������ �߸����� ���� ���������� ���� �� �̿��� ���� å����
���� ������ ȸ�� ���� ������ ����������ȣ�� �����ϼž� �մϴ�.

�����մϴ�^^','������',to_date('20/08/17','RR/MM/DD'),3,null,null,111,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (118,'�ͽ��÷η�11�� �α����� �ȵǰ� ũ���� ������ ������ �ȵǳ׿�','	
�ͽ��÷η� 11�� ������Ʈ �ߴµ��� �α��θ� �϶�� �˾�â�� ��� ����

ũ������ �����ߴµ� ������ ��û�� �����̳׿�.

��� �ؾ� �ϳ���?','�����Ұž�',to_date('20/08/17','RR/MM/DD'),4,null,null,117,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (120,'[�����Ұž�]�� �ͽ��÷η�11�� �α����� �ȵǰ� ũ���� �Ʒõ����� ������ �ȵǳ׿� �� ���� �亯 �帳�ϴ�.','�ȳ��ϼ��� �����Ұžߴ�

GOOD PARTNER ������ �Դϴ�.

8�� 17�� ����, ������ ������ ��ü �Ǹ鼭 ��Ȱ�ϰ� ����� ���� �ʾҴ� ������ �����˴ϴ�
�ٸ� ������ �������� Ư���������� ���ߴ� ������ �ִ����� �ľ��߿� �ֽ��ϴ�.

���� �̿뿡 ������ �帰�� �˼��մϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),2,null,null,117,1,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (122,'ȸ�������� �г����� �߸� �Է��߽��ϴ�','������ ��� �ϳ���?','����޳���',to_date('20/08/17','RR/MM/DD'),5,null,null,121,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (124,'[����޳���]�� ȸ�������� �г����� �߸� �Է��߽��ϴ� �� ���� �亯 �帳�ϴ�.','�ȳ��ϼ��� ����޳�����

GOOD PARTNER ������ �Դϴ�.

�г����� �����Ͻ÷��� ������ ��ܸ޴��� ���������� �����Ͻ� �� ���� ��Ź�帳�ϴ�.

�����մϴ�^^
','������',to_date('20/08/17','RR/MM/DD'),1,null,null,121,2,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (126,'÷������ ����','÷�������� �ȿö󰡿�?','Ż���',to_date('20/08/17','RR/MM/DD'),11,null,null,125,0,0);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (128,'[Ż���]�� ÷������ ���� �� ���� �亯 �帳�ϴ�.','�ȳ��ϼ��� Ż����

GOOD PARTNER ������ �Դϴ�.

Ȩ������ ��뿡 ������ ��� �˼��մϴ�.
�����ֽ� ���뿡 ���ؼ� �����帮�ڸ�, ÷�����ֽ÷��� ���������� ���������� ���ԵǾ� �־� ������ �߻��ϰ� �ִ°� �����ϴ�.

÷���Ͻ÷��� �������� PDF���� �Ǵ� hwp������ ��ũ������ ������ ��
�׸��� ���� �̿��ؼ� ��������(�ֹε�Ϲ�ȣ, ����ڵ�Ϲ�ȣ, ī���ȣ, ���¹�ȣ ��) ���������� �ش�Ǵ� �κ��� �����ֽ� �� �̹����� ������ �ֽŴ��� ����÷�θ� �ٽ� �����غ� �ֽŴٸ� ���������� Ȩ������ ������û�� �̷�� ���� �� �����ϴ�.

1. pdf������ ��ũ���� �Կ�
2. �׸������� ��ũ���� ������ ���������κ��� �����
3. �̹��� ���Ϸ� ����

���ǹ������ �ѹ� �ٽ� ������ �� �ֽñ� �ٶ��ϴ�.
�����մϴ�^^','������',to_date('20/08/17','RR/MM/DD'),5,null,null,125,4,1);
Insert into ATEAM.OPINION (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (150,'�亯�����','.','������',to_date('20/08/21','RR/MM/DD'),0,null,null,125,1,1);
REM INSERTING into ATEAM.PRESS
SET DEFINE OFF;
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (49,'����, �̹����� ��ǥ���� �޼� ����? ȿ������ ����� �����?','�� ������ ����Ǯ�̸� ���� ���� �ľ� 
�ܱ� ���� ����� �޼��� �⺻�� ���� �ľ��̴�. ������ ���������� �� ���踶�� ���ϱ� ������ �ֽ� ������ Ʈ���带 �ľ��ϱ� ���� ���� ���ǰ�縦 ü�������� �н��ϴ� ���� �߿��ϴ�. �ܱⰣ�� ������ ����ø��� ���ؼ��� �� �� ����� ��Ʈ�� ���������� �����ؾ� �Ѵ�. �ִ� ������ ������ ������ ��Ʈ�� �ľ��ϰ� ��Ʈ�� ������ ����� ���� �߿��ϴ�. 
LC�� �̱�, ����, ȣ�� �� �� ����ǵ��� ������ ��� ���ǹǷ� ���� ��ü�� �鸮�� ���� ��� ���Ӿ��� ������ �н��� �ʿ��ϴ�. �������� ��ũ��Ʈ ���� ��� ���� ���� ���ϴ� �����̴�. RC�� ���迡 �ַ� �����Ǵ� ǥ���� �ľ��ϰ� ���� ��Ʈ���� �ð��� �������� �ʱ� ���� ö���� �ð��й谡 �߿��ϴ�. 
 

�� LC�� ���ϴٸ� �ð��й�, Ű���� ������ ������ �ݺ�
LC�� ������ϴ� �л����� ���� ��� �ӵ��� ������ ���� ���ϰ� ���� �Ѿ�� ��찡 ����. LC�� �ӵ� �ο��̹Ƿ� ������ ��Ȯ�ϰ� �����ϴ� ���� �����̴�. ��Ʈ1�� ��������� direction �ð��� ���� ���, �ٸ� ��Ʈ�� ������ ���⸦ �� �ð��� ����ϴ�. ������ ��� ��ٷο� �� ���ϴ� ��Ʈ3�� ������ �̸� �о�θ� �ð��� ������ �� �ִ�. �� �� ��� ������ �� �о�α⿡�� �˹��ϴ�, �߿��� Ű���常 ������ �ľ��ϴ� ���� �߿��ϴ�.  

�� RC ������ �������� �ϱ� �ƴ� ��Ʈ�� ���� ����� �ʿ�
������� ��ǥ�� �Ѵٸ� ��Ʈ7�� ������ �� ����� ���� �߿��ϴ�. ������ ���̰� ��� ������ ǥ���� �ٸ� ���� �ٲپ� ǥ���ϴ� ���·� �̷���� ������ ������ ã�Ⱑ ���� �����̴�. ���� ������ �����ؾ� �帧�� ���صǴ� ������ ���� ������ ������ ������ ������ �ʴ� ������ �ؾ� �Ѵ�. ��Ʈ7�� ���� ������ �ľ��ؾ� ������ Ǯ �� �ֱ⿡ ���� ����� ���̵��� �ٸ� ��Ʈ���� �ð��� ���̴� ���� �����̴�. 

�� �ѱ�� ���� �ð�, ��� Ȱ���ؾ� �ұ�? 
���� ���� �� ���� direction�� LC ��Ʈ1,2 direction�� ���� ��, ��� �ִ� ���� �ƴ϶� ��Ʈ 3,4�� ���� Ű���带 ��ų� ��Ʈ5�� ������ Ǯ������. ������ �ð��ο��̶�� ���� ����ϰ� �ð��� ȿ�������� Ȱ���ϴ� ������ �ؾ� �Ѵ�. 
����� �ƶ����� LC�� ���� ���İ� ���� ���߷��� ���� ���̹Ƿ� ������ ��Ʈ ������ RC�� Ǯ����� �͵� �ϳ��� ����̴�. ���� ����ð��� �ٰ��� �� ��Ʈ7�� �� �������� ���������� ��Ż�� ��鸱 �� �־� Ǯ �� �ִ� ������ ������ �ʾ� Ǯ�� ���ϴ� ��찡 �ִ�. �ݸ� ��Ʈ 5,6�� �������� �� ���常 �����ϰ� ������ ǥ������ Ǫ�� �����̹Ƿ� ���������� ���� ������ ���� ���߷��� ������ �ʴ´�. ���� ��Ʈ7�� ���� �ذ��ϴ� ���� ����� �޼��� �� ȿ������ �� �ִ�.  

�ٸ�, �̴� ���� ������ ������ ���� ���غ��� ���� �ʺ��ڿ��Դ� ȿ������ ����� �ƴ� �� �ִ�.

�����ൿ�� ������ ���� ���� edudonga@donga.com','������',to_date('20/08/17','RR/MM/DD'),null,49,null,null,'imgUpload\2020\08\20\s_90fbc4b3-847c-43c9-bc98-e8a62aa15521_mistakes-1756958_1920.jpg','imgUpload\2020\08\20\90fbc4b3-847c-43c9-bc98-e8a62aa15521_mistakes-1756958_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (50,'[�а� Tip ] ���縦 Ű��� ''�Ѿ�� ����ī ICT�����к�''','[EBS ���ᴺ��]

���� ��ȸ������ �ܼ��� �� �о߿��� �پ �ⷮ�� ���̴� �������Ӹ� �ƴ϶�, ���� �ٸ� �о��� ������ ������ ���ο� ����� â���� �� �ִ� �뼷�� ���翡 ���� ���䰡 Ŀ���� �ֽ��ϴ�. �� ���п����� �̿� ���� ������ Ŀ��ŧ���� �����Ϸ��� �������� Ȯ��ǰ� �ִµ���, �̷��� ���� �й��� ��� �� �ִ� ��, ���� �а��� �����忡�� �Ѿ���б� ����ī ICT�����кθ� �Ұ��ص帳�ϴ�.','������',to_date('20/08/17','RR/MM/DD'),null,50,null,null,'imgUpload\2020\08\20\s_5022499a-b934-4e9e-9652-81e54c468cbe_room-2775442_1920.jpg','imgUpload\2020\08\20\5022499a-b934-4e9e-9652-81e54c468cbe_room-2775442_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (45,'�ؾ����û, �����߽� ������ ����� 14�� �о� 166�� ����','�ؾ����û�� ���� ������ ��ȭ�� ���� ��åȫ�����ؾ��󡤼��硤������񡤱��� �� 14�� �о� �� 166���� ä���Ѵٰ� 17�� ������.

���� �ǽ��ϴ� �� ��° ���� ä������ �оߺ� �������� �����ϴ� ��°���ä������ ����ȴ�.

�����ο��� ���� ������ ��� �� 11������, �оߺ��� ��å���� 5��, �װ���� 1��, �ؾ��� 1��, ������� 2��, ���� 2���̴�.

���� ������ �� 155���� ä���ϸ� ȫ�� 6��, ���� 2��, ���� 25��, ������� 5��, ������� 25��, ������� 11��, Ư��(����) 66��, Ư��(Ư��) 15���̴�.

�̹� ä�뿡�� ���ߵ� �ο��� ��û �� ����û, �������, �����, �װ��� �� �μ��� ��ġ�� ������ ������ ���� �ӹ��� �����ϰ� �ȴ�.

���ÿ����� �̴� 27�ϱ��� �ؾ���� ä�� ������(http://gosi.kcg.go.kr)���� ������ �����ϴ�.

�оߺ� �����հ��ڴ� ���������� ���� 12�� �ʿ� ��ǥ�� �����̴�.

���� ��� �� ��Ÿ �ڼ��� ������ �ؾ����û(www.kcg.go.kr) �� ��������(www.gojobs.go.kr), �ؾ���� ä�� ������(http://gosi.kcg.go.kr)�� �Խõ� ������ ���� Ȯ���� �� �ִ�.

��ó : ����Ϻ� - �µ��� �´���(http://www.kyongbuk.co.kr)','������',to_date('20/08/17','RR/MM/DD'),null,45,null,null,'imgUpload\2020\08\20\s_7ae0cc8d-7fe9-4eae-baac-7f2704062d9d_police-378255_1920.jpg','imgUpload\2020\08\20\7ae0cc8d-7fe9-4eae-baac-7f2704062d9d_police-378255_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (46,'[�����Խ� ��Ŀ��] ���÷� ��������','<�����Խ� ��Ŀ��> �ð��Դϴ�. ������ ���÷� ����뿡 ������ ���±� �л��� �Խÿ� ���� �˾ƺ��ڽ��ϴ�.','������',to_date('20/08/17','RR/MM/DD'),null,46,null,null,'imgUpload\2020\08\20\s_6f60ecd2-ca0a-4333-9eb0-042379a76671_financial-2860753_1920.jpg','imgUpload\2020\08\20\6f60ecd2-ca0a-4333-9eb0-042379a76671_financial-2860753_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (43,'[�����Խ� ��Ŀ��]���հ��� �հ� ���, ','[EBS ���ᴺ��]

�̹����� �Խ� ������ ������� �����̿� ���� �����ϴ� <�����Խ� ��Ŀ��> �ð��Դϴ�. ������ �л��������������� ���հ��뿡 ������ �輭�� �л��� �Բ� �л��� �������� �ڼҼ� �ۼ��� ���� �̾߱� �������ڽ��ϴ�. ','������',to_date('20/08/17','RR/MM/DD'),null,43,null,null,'imgUpload\2020\08\20\s_8c7cab91-85a7-4a6d-a692-3eaf13cc4e93_book-731199_1920.jpg','imgUpload\2020\08\20\8c7cab91-85a7-4a6d-a692-3eaf13cc4e93_book-731199_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (47,'[��������] �� ����� ''���� ���� Ȯ��'' ���á������� ������?','[EBS �� �ְ� ��������] 

���� �Ƴ��

������ ������� �����Խÿ� ������ ���� Ȯ�� ��� ������ �����߽��ϴ�. ���� ���� ������ ������ ���� ������ ���� �ѱ�������ü�ѿ���ȸ ����ö �뺯�ο� ¤��ڽ��ϴ�. ','������',to_date('20/08/17','RR/MM/DD'),null,47,null,null,'imgUpload\2020\08\20\s_a5057d76-5228-4eee-9576-a99645dd9580_lecture-3986809_1920.jpg','imgUpload\2020\08\20\a5057d76-5228-4eee-9576-a99645dd9580_lecture-3986809_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (48,'[�������� ������] �������� �����̴�!�� ����������-���հ���','�� ���հ��� ����

���� ���հ����� �����ο��� ���⵵�� ū ��ȭ ���� �� 3,566�� ������ ���ÿ��� 68.4%�� �ش��ϴ� 2,438���� �����ϰ�, ���ÿ��� 31.6%�� �ش��ϴ� 1,128���� �����Ѵ�. ���� 2,438���� �ٽ� �л�����������(�迭����)���� 655��, �л�����������(�а�����)���� 915��, ����������� 532��, �Ǳ�/������������ 103���� �����ϰ�, ���� 1,128���� ������������ 573��, ������������ 555���� �����Ѵ�. ���� �л������������� �迭�����̵� �а������̵� ��� ���������з±����� ����, ��õ�� ������ ������, ������ ����, ������ �л��ο� �ڱ�Ұ��������� 1,570���� �����Ѵ�. ���հ���� �л��α������� ���� �л�����������, ������������� ���� �հ��ڸ� �����Ѵ�. �л������������� ���������з±����� ���� ���ɿ� ���� �δ� ���� ������ �� �ִµ�, �ٽ� �迭������ �а����� �� ���� �������� ������. �� ���� ��ü ������������ 44%�� �����ϴ�, ���հ����� �ٽ������̶� �� �� �ִ�. �� ������ �ߺ������� ����ϸ�, ���� ���ڰ� �ٸ��� ������ ������ �ڱ�Ұ����� �����ص� �������� �ʴ´�. ���� �� ������ �迭������ �а������� ���̰� ���������� �򰡿�Ҵ� �����Ͽ� ���հ��� ������ ����ϴ� �л��� �ߺ������� ���� �հ� ���ɼ��� Ȯ���� �� �� �ִ�. 

���� �л����������� ���迭������

�л�����������(�迭����)�� �ι����а迭, ��ȸ���а迭, �ڿ����а迭, ���а迭 �׸��� ���� �ż��� �۷ι������кη� ������ �� 655���� �����Ѵ�. ���߹���� �л��ο� �ڱ�Ұ����� Ȱ���� ���� 100%�� �����ϸ�, ��õ�� ���� ����, ���� ������, ���������з±��ص� ���� ������ �л��α���, �л��κ񱳰�, �ڱ�Ұ��������� �����Ѵ�. ���л��� ������ʱ����� �̼��� ��, 2�г� ���� �� ���������� ��ġ�� �к�/�а��� ������� ������ ����� 1�г� �о������� ���� �� ���а迭�� ��ġ�� �к�/�а��� �����Ѵ�.

���� �������

���� ��������� ���⵵�� ���� 532���� �����ϴµ�, ��� 60%�� �л��� 40%�� �ϰ��ջ��Ͽ� �����ϸ� ���������з±����� �ִ�. 40% �ݿ��Ǵ� �л��δ� ���������� ��� �� ���� ���� ����, �񱳰��� �⼮�� 20�ð� ������ ����ð��� Ȯ���ϴ� �����̶� �������� ũ�� �ʴ�. �������� ����� �����翡�� �����ȴ�. ����� ���� ���� �ǽõǾ� �δ��� ����. �ι���� ����� ��ȸ�� ���ձ���������, �ڿ���� ���� 2������ ����(��I/ȭI/��I �� ����)������ �����ȴ�. ���������� ���� ����ϰ� �ð��� �ٸ��� Ÿ ���а� �������� ��ġ�� ��� �������� ������ ����� �� �� �ִ�.','������',to_date('20/08/17','RR/MM/DD'),null,48,null,null,'imgUpload\2020\08\20\s_49dd6323-248b-4887-abe4-714c09a1225e_convention-center-3908238_1920.jpg','imgUpload\2020\08\20\49dd6323-248b-4887-abe4-714c09a1225e_convention-center-3908238_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (51,'����б��� ''�ΰ�����'' ���� ����١��̸��� ���� 2�б����','(����=���մ���) ����� ���� = �̸��� ���� 2�б���� ����л����� �б����� �ΰ�����(AI) ������ ����.

�����δ� 2021�г⵵ ���Ի����� ����б� ���뱳���� ���� ���� �������� ''�ΰ����� ����'', ''�ΰ����� ����''�� �����ϴ� ������ ���� ''�ʡ��ߵ��б� ��������'' �Ϻ� �������� ���� �����ߴٰ� 17�� ������.

������ ������ �ΰ����� �������� ���ԵǴ� ���� �̹��� ó���̴�.

����б� �������� ���� 1�г������ ��� ''���� ����''�� 2��3�г������ ����, ��� ���� ����� ������ ��� ''�Ϲ� ���� ����'', �� �� ��ȭ�� ���� ������ ''���� ���� ����''���� �����µ�, �ΰ����� ���� ������ 2��3�г���� �ַ� ��� ���� ���� ���� �� �ϳ��� �߰��ȴ�.

''�ΰ����� ����''�� �ΰ����� �ӿ� ��� ������ ������ ������ ���� ��������, �������� ����б� ���� ���� �� ���� ���� ���� ���� ''�⺻ ����'', ''�ǿ� ����, ''����'', ''���� ����'', ''���а��� Ž��'' �ܿ� ''�ΰ����� ����''�� �߰��ϴ� ������ ��Ҵ�.

''�ΰ����� ����''�� �ΰ����� ��ü�� ������ �����ϴ� �� ������ �� ��������, ''��� ���� ����'', ''���� �Ϲ�'', ''â�� �濵'', ''�ؾ� ��ȭ�� ���'', ''��������'', ''���� ��� �Ϲ�'' ��� �Բ� ��������� ���� ���� �������� ���Ӱ� �߰��ȴ�.

�� ���� ��� ���� �����̱� ������ ��ü �л��� ���� ���� �ƴϴ�.

�� �б��� �л����� ��� ���θ� ������ ���� ���� ���θ� �����Ѵ�.

������ �����ڴ� "�ΰ����� ������ ó�� ���ԵǴ� ���̾ ������ ��� ��Ÿ���� �ñ��ߴµ�, �������� �þȿ� ���� ��ûȸ ������ �����Ҵ�"�� �Ͷ��ߴ�.

�����δ� �̴� 31�ϱ��� �������� ���� �ǰ��� �޴´�.

�������� �� ���� �޺��� ������ ���ǻ���� �������� �����ϰ� ������ ���� �������� ���� 1���� �ɸ��ٴ� ���� ����ϸ� �̸��� ���� 2�б���� �ΰ����� �������� ���Ե� �����̴�.

�̿� ���� ���� ����б� 1�г��� 2�г��� �Ǵ� ���� 2�б���� �ΰ����� ������ ��� �� ���� ������ ���δ�.

���� ���Ի��� 1�г� �л����� 2�г����� �ö󰡴� 2022����� �ΰ����� �������� ���� �� ���� �����̴�.

������ �����ڴ� "ó�� �õ��Ǵ� �ΰ����� �����θ�ŭ ���� ���� �� ������ ����� �Ĳ��� ����͸��ϰڴ�"�� ���ߴ�.
','������',to_date('20/08/17','RR/MM/DD'),null,51,null,null,'imgUpload\2020\08\20\s_afd66956-2ec5-40e6-b656-d2b5243e47a0_math-work-4711302_1920.jpg','imgUpload\2020\08\20\afd66956-2ec5-40e6-b656-d2b5243e47a0_math-work-4711302_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (52,'[���� job�ƶ�] �ϴ��� �޸��� ''��з��̼�''','[EBS ���ᴺ��]

�ֱ�, �ܼ� ������ ��п��� �Կ��� ��б���, ����� ���� �̿��� ���� �ø鼭 �ӵ��� ���⸦ �����ϴ� ''��� ���̽�'' ���� �����ܿ��� ū �α⸦ ���� �ִµ���. ���߿��� ���ǵ� ������ ���̴� ''��з��̼�'', ���� <���� ��ƶ�>���� �Ұ��ص帳�ϴ�.','������',to_date('20/08/17','RR/MM/DD'),null,52,null,null,'imgUpload\2020\08\20\s_6311e897-f39d-4e40-9870-10b125af41ad_ginkgo-3758236_1920.jpg','imgUpload\2020\08\20\6311e897-f39d-4e40-9870-10b125af41ad_ginkgo-3758236_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (53,'�հ� �ڼҼ� ���⡦ ������ �ڶ�������ģ ����� �ԾƳ�����','���� �� 23�Ϻ��� 2021�г⵵ ���� ���ø����� ���۵ȴ�. ���������� �� �޿� �յΰ� � ������ �غ����� �������ϴ� ��������� ���� �� ���� �������� ������. 2020�г⵵ ���� �л�����������(����)���� ���ٸ� ������ �� ���л� 3�ι��̴�. ������(����� ����ȯ����а� 1)���� �ռ���(�ѱ��ܴ� ���Ͼ�� 1)��, �����(����� ���������� 1)���� �� ���ΰ�. ������ ���� �ֿ� ���� �������� �յ��� �հ��� ��ܿ� �̸��� �ø� �̵��� ���� �հ��� �ٽ��� �ڱ�Ұ���(�ڼҼ�)�� ������ �߽����� ������ �ǳ޴�.','������',to_date('20/08/17','RR/MM/DD'),null,53,null,null,'imgUpload\2020\08\20\s_67f5d26c-5714-457c-9daa-52c7227c3cfc_office-594132_1920.jpg','imgUpload\2020\08\20\67f5d26c-5714-457c-9daa-52c7227c3cfc_office-594132_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (54,'[�������� ������]  �ڵ����� ����Ʈ ��� ����� ''�ܿ�ķ��''','[EBS ��������]

�ڵ� ���� �ǹ�ȭ�� �б� �� �ƴ϶� �� ����ü������ �л����� �ڵ� ������ ���� ���α׷��� ���� ��ȹ�ϰ� �ֽ��ϴ�. �����ֿ��� ũ���������� �¾� ���̵��� ����Ʈ ��Ÿ� ���� ����� Ÿ���� ����Ʈ���� ķ���� ���� ������ ��Ҵµ���, � ����� �����̾����� ���� �Բ� ����������. ','������',to_date('20/08/17','RR/MM/DD'),null,54,null,null,'imgUpload\2020\08\20\s_37d72f59-fc73-46bb-9688-aad1917590ff_code-1839406_1920.jpg','imgUpload\2020\08\20\37d72f59-fc73-46bb-9688-aad1917590ff_code-1839406_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (55,'Ʈ���� �̵�� �ô�, ���� ������ �ƿ츦 â���� �缺','�� ���������� �츮���� ��ȭ �������� �Һ��ϴ� ������� �����ϰ� �ִ�. �� �α�� ���� ���̵��� �߽����� �� ������(K-POP)�� ���� ����, ���, ���� �� Ư�� �о߸� ������ �ʴ´�.

Ư�� �� ���� ��������������� �̵�� ���� ��踦 �Ѿ� ���� �����ϴ� ''Ʈ���� �̵��(Trans media)''�� Ȱ���ϰ� �Ͼ��. �α� ������ ��󸶳� ��ȭ, ���� ������ ���� �����Դ� ���̴�. ��ó�� �������� �����Ǹ� ���ÿ� ���嵵 Ȯ��ȴ�. �������� ��õ�̶�� �� �� �ִ� ���������� ��ġ�� �������� �ִ� ������.

�̷��� Ʈ���� �̵�� �ô븦 ��ư��� â���ڿ��Դ� �������� ������� �ʼ����̴�. ���� �������(IT)�о߿��� ���� ������ ������ �õ��ǰ� ������, ������ �о߿����� ���� ü������ �����̳� ������ �̷����� ���ߴ�. �̷��� ���� ���並 �ݿ��� û����ȭ������б�(���� Ȳ����)�� 2021�г⵵���� �ż�����ϴ� ������ �ٷ� ��������������(����������â������)�̴�.

���� ù ���Ի��� �����ϴ� û���� ���������������� ������Ʈ �߽� ���������� ���� ���������� ��ȹ�����ۡ��÷��� ������ �̲��� â���ڸ� �缺�ϴ� �� ��ǥ��. ��ô��� �䱸�� �����ϴ� �������� ��ȹ�ϴ� ��ȸ������ �ɷ� ���ΰ��� ������ �����̰� ���� ���� ���̴� �������� �ι����� �ɷ� ���ΰ��߽��� ����� ������ �����ϴ� ���С������� �ɷ� �� â���ڿ��� �ʿ��� ������ �⸦ �� �ֵ��� �� ��ȹ�̴�.

���������������� �������ٵ� ������ ������ ����������δ� ���ο� ��ȭ����� ��ó�� �� ���ٰ� �����Ѵ�. �̷��� ��ġ�� �Ʒ� ���������������� ������ ������� �߽����� 3���� �İ����� ��������� �����ϱ�� �ߴ�. �⼮ Ȯ���� ���� �ʰ�, �쿭�� ������ ���� ������ �ű��� �ʴ´�. �л����� ���ǽǿ��� ���� ���� ������ ����� ��´�.

������ û���� �������������� ������ "�ڷγ�19 ���ȭ�� ���� ����Ʈ(Untact) �ô뿣 �⼮�� ���� �ǹ̰� ����"�� "�ڽ��� ������ �������� ���������� �°� ������ ������� ����� �ȴ�"�� �����ߴ�. �̾� �� ������ "ȹ��ȭ�� �������� ������ �����ϸ� â���� �ٽ��� ������ ���ʶ߸� �� �ֱ� ������ ������ �н�(Pass)�� �� �н�(Non-pass)�θ� �����Ѵ�"�� "������ ���� �����ڰ� �ƴ϶� ���� �ذ��� ���� ''�۽Ǹ�������(Facilitator)''�μ� �л���� �Բ� ����ϰ� ������� ������"�� ���ٿ���.

���������� �ڷγ�19 ���¸� �������� ������ ����� ���� �޺��� ���̶�� �����Ѵ�. û����� ����Ʈ �ڷγ� �ô뿡 ����� ���������� ������İ� ������ ���Ӿ��� ������ ��ȹ�̴�.

���� û���� ���������������� ��ü �����ο�(���� ��)�� 40���̴�. ���ø��������� 1���� 2���� ���� ���� 21��, 16���� �����Ѵ�. ���� 1�� ���������� 9�� 23�Ϻ��� 10�� 13�ϱ���, 2�� ���������� 11�� 23�Ϻ��� 12�� 7�ϱ��� �ǽ��Ѵ�.


[��Ǫ�� �������� ����]','������',to_date('20/08/17','RR/MM/DD'),null,55,null,null,'imgUpload\2020\08\20\s_9fa6f5ea-1035-42ce-ac2d-b46322871822_computer-2561518_1920.jpg','imgUpload\2020\08\20\9fa6f5ea-1035-42ce-ac2d-b46322871822_computer-2561518_1920.jpg');
Insert into ATEAM.PRESS (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,ROOT,STEP,INDENT,GDSTHUMBIMG,GDSIMG) values (56,'���� ���� Ȯ�롤�������� ��� SW���մ���, �������� ����','�������б�(���� ���ȿ)�� ������ �������� �����򰡱���� QS�� �����Ϻ��� �������� �ǽ��� ''2020 QS �ƽþ� ������''���� ���ռ��� 91���� �ö���. 2016�� �ƽþ� 93���� ����� �� �̾� ������ 2��� ����� ������, 5�� ���� �ƽþ� 100���� �����ϴ� ������ �ŵ״�. ''2020 QS ��������� �оߺ� ����''������ ������ ȣ�ڰ����濵�������� ���� 2���� ���� 42���� �ö�����, �� �ۿ� ����������� ���� 7��, ����õ������ ���� 10��, �׸��� ��ǻ�Ͱ����� ���� 11���� ����ߴ�. �� �ٸ� �۷ι� �����򰡱���� THE�� �ǽ��� ''2020 THE ���������''������ ���� 10��, ���� 400���ǿ� �����ߴ�.

�������� ������� ������м����� �ű�� ���̵�(Leiden) ���������� 2018�� ���� 4���� ����� �� �̾� 2019�⿡�� ���� ������ �����ϸ� �� ���ο뵵 ���� 2����� ������ ������.

���� ������ ����Ʈ�������մ�������������� ������ 6�� ��� AI���Ϳ��� AI�ݶ󺸷��� �����ߴ�. AI�ݶ󺸷��� 4�� ������� ����� �� ������ ����ü�踦 �����ϱ� ���� ����ũ�� ������ �����ϵ��� ����ƴ�. �극�ν������ ���� ȸ�ǰ����� SW���� �÷���, 3D�����÷�, ����Ŀ�� ��ũ��, VR/AR��, ���־�Ʃ����� ������ �پ��� ������ �����ϴ�.

������ ������ ����ó���� "������� â�� ������ ���� �缺�� ���� ��ǥ��, 4�� ������� �ô븦 ����� �������� ������� �����ڵ� �ǹ������� �ϰ� �ִ�"�� "���� ����Ⱓ �ּ��� ���� ���� ������ ķ�۽����� �����⸦ ����Ѵ�"�� ������.','������',to_date('20/08/17','RR/MM/DD'),null,56,null,null,'imgUpload\2020\08\20\s_e3e8debe-6d2b-4946-b707-07609935b7c7_writing-1149962_1920.jpg','imgUpload\2020\08\20\e3e8debe-6d2b-4946-b707-07609935b7c7_writing-1149962_1920.jpg');
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
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�������','00:00:00','20/07/29');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�������','00:00:00','20/07/29');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('2','�������','03:00:00','20/08/12');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','���α׷���','01:07:11','20/08/21');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('��������','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�������','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('���','�������','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�������','00:00:00','20/08/13');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('����','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ڹ�','01:05:15','20/08/18');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('���ο�','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('�����Ұž�','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','����','02:23:23','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','����','12:43:08','20/07/31');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','����','02:43:08','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','02:13:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','���α׷���','01:39:10','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','����','02:02:02','20/07/30');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�丮','03:03:03','20/07/31');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','����','00:00:33','20/08/02');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','02:10:31','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('��','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','05:08:11','20/08/11');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','���α׷���','02:19:10','20/08/12');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','01:10:11','20/08/07');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','02:10:15','20/08/02');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('�ϴ�','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('��','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','ii','00:00:26','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('�Ӽ���','JAVA','03:20:10','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('���ο�','JAVA','01:10:26','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('����޳���','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('Ż���','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('ũ��ũ','�������','00:00:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������ھ���','�������','00:00:00','20/08/18');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�˰���','03:10:11','20/08/07');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('2','java','00:00:04','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ȵ���̵�','00:05:26','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ڹ�','02:02:00','20/08/17');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','�ڹ�','01:33:05','20/08/19');
Insert into ATEAM.STUDY (NAME,SUBJECT,TIME,TODAY) values ('������','JAVA','00:00:43','20/08/21');
REM INSERTING into ATEAM.SUBJECT
SET DEFINE OFF;
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('9����','00:00:00','2020/07/24');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('���Ǥ�','00:00:00','2020.07.14');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('�㷯','00:00:14','2020/07/20');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('666','00:00:34','2020/07/24');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('��������','00:00:03','2020/07/22');
Insert into ATEAM.SUBJECT (SUBJECT,SUBJECTTIME,TODAY) values ('����','16:04:34','2020/07/24');
REM INSERTING into ATEAM.TBL_MESSAGE
SET DEFINE OFF;
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (82,'2','2','666666666666666666',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (62,'2','2','sdadadsadagw634',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (63,'2','2','sdsadsffy563542',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (68,'2','2','sdasdsadas',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (171,'������','������','�ȳ��ϼ���
�ǰ� �� ������ ���� �÷ȴµ�
���� �亯 ��Ź�帮�ڽ��ϴ�.',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (64,'2','2','asdadad',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (67,'2','2','dsadadas',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (69,'2','2','2133123',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (70,'2','2','sdadasrewr',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (71,'2','2','fsgfsggsf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (72,'2','2','fggfsgfgsf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (73,'2','2','�ٽ� Ȯ��',null,to_date('20/08/17','RR/MM/DD'));
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
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (123,'2','2','������������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (124,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (125,'2','2','��������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (126,'2','2','��������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (128,'2','2','�ä��ä��ä�',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (130,'2','2','�Ǥää�',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (131,'2','2','������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (132,'2','2','�ä����',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (133,'2','2','adf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (134,'2','2','������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (135,'2','2','��',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (136,'2','2','������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (137,'2','2','����������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (138,'2','2','daf',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (139,'2','2','oo',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (140,'2','2','ye',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (143,'2','2','��������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (145,'2','2','��������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (144,'2','2','��������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (146,'2','2','��������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (147,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (148,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (149,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (150,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (151,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (152,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (153,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (154,'2','2','����������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (155,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (156,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (157,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (158,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (159,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (160,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (161,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (162,'2','2','������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (163,'2','2','876887686',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (164,'2','2','������������������',null,to_date('20/08/17','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (173,'���','��','�ȳ��ϼ���^^
���� å ���� �帮���� ���� �帳�ϴ�!',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (166,'2','2','2222222222222222222222222222',null,to_date('20/08/18','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (172,'������','������','�ȳ��ϼ���.
�ǰ� �� ���� ��� �Ϸ��Ͽ����ϴ�.',null,to_date('20/08/19','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (174,'���','������','fffff',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (175,'���','������','����',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (176,'���','������','����',null,to_date('20/08/20','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (177,'���','������','���� �׽�Ʈ����',null,to_date('20/08/21','RR/MM/DD'));
Insert into ATEAM.TBL_MESSAGE (MID,TARGETID,SENDER,MESSAGE,OPENDATE,SENDDATE) values (178,'���','������','�׽�Ʈ�Դϴ�',null,to_date('20/08/21','RR/MM/DD'));
REM INSERTING into ATEAM.TESTTIME
SET DEFINE OFF;
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('����','00:00:02','2020/07/17');
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('����','00:00:38','2020/07/17');
Insert into ATEAM.TESTTIME (SUBJECT,SUBJECTTIME,DAY) values ('����','00:01:13','2020/07/17');
REM INSERTING into ATEAM.WEB_NOTICE
SET DEFINE OFF;
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (22,'[����] �ý��� ���� �� �������� ���� ���� �ߴܾȳ�(20.8.13(��) 21:00 ~20.8.13(��) 02:00 �� 5�ð�)','

�ȳ��ϼ���. GOOD PARTNER�ý��� �������Դϴ�.
GOOD PARTNER�� ������� �����ǰ� �ݿ� �� �ý��� ��� �������� ���Ͽ� �ֱ����� ���˰� ���α׷� �ݿ��� �����ϰ� �ֽ��ϴ�.
���� ���� ���񽺸� ���Ͽ� �Ʒ��� ���� �ý����� �Ͻ��ߴܵǿ��� �����Ͻô��� �����Ͽ� �ֽñ� �ٶ��ϴ�.


�� �����Ͻ� : 2020.8.13(��) 21:00 ~ 2020.8.13(��) 02:00 �� 5�ð�
�� �������� : GOOD PARTNER �ű������� �ݿ� �� ó�� �ӵ����� ��
�� �������� ���
-GOOD PARTNERȨ������
- ���� ���νð� �����ý���

�� �۾��ð����̿��� ���� ���νð� ó���� �Ұ����մϴ�. ','������',to_date('20/08/17','RR/MM/DD'),5,null,null,21,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (24,'[����] ���� API ���� ���� �ȳ�(���� ����� �ʵ� ��Ź�帳�ϴ�.)','


�ȳ��ϼ���.
GOOD PARTNER ����Դϴ�.

20.8.20(��) �η� GOOD PARTNER �� ���� API�� ����˴ϴ�.

���� Ȩ���������� �����Ǵ� ���������� �������� �����Ǹ�
������ ����Ͻô� URL�� �ٲ�� �˴ϴ�.

�̿� ���� ������ ����Ͻô� URL�� ��ü�Ͽ� �̿��ϼž� �մϴ�.
(������ ���񽺵Ǵ� URL�� ���� �Ⱓ �� ���� �̿��� �Ұ����մϴ�. ������ ������ ������� �ϰڽ��ϴ�.)

�ڼ��� ������ �Ŵ����� ������ �ֽñ� �ٶ��ϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),3,'Ȩ������_�����_����API+�޴���_v0.1.hwp','/upload/notice/2020/08/17/8a8ce00e-387c-4ce5-bbdc-f9bfadb2045a_Ȩ������_�����_����API+�޴���_v0.1.hwp',23,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (26,'[����] GOOD PARTNER ����ȭ�� ���� �� ���� ���㼭�� ���� �ȳ�(20.8.20 / ���ں���)','


�ȳ��ϼ���.
GOOD PARTNER����Դϴ�.

�ٰ����� 20.8.20(��) �η� Ȩ������ ����ȭ�� ���� �� ���κ� ���㼭�񽺰� ���񽺵˴ϴ�.
����Ǵ� �κ��� ÷�ε� �Ŵ����� ������ �ֽñ� �ٶ��ϴ�.

Ȩ������ �α��� �� ����Ͻô� "My����" �� "���� �� ��" �޴��� 
�ϳ��� �޴��� ���� ������ ������ �����Դϴ�.
(���� �� ����� ���� �ȳ� ����)

�ູ�� �Ϸ� �ǽñ� �ٶ��ϴ�.
�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),4,'Ȩ������_�����_�޴���_v0.1.hwp','/upload/notice/2020/08/17/c73dffa5-e50c-4f62-aa26-2e977567ea8a_Ȩ������_�����_�޴���_v0.1.hwp',25,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (28,'[����] �������� ���� ��� ��÷�� �ȳ�','

�ȳ��ϼ���.
GOOD PARTNER ����Դϴ�.

���� 08.7(��)~14(��) �ǽ��� �������� ���翡�� �̺�Ʈ ��÷�ڸ� ���Ӱ� ���� �����帳�ϴ�.

�¶��� ��ȭ��ǰ���� 08.21(��) �ϰ� �߼� �����Դϴ�.

���� ���� ����帳�ϴ�.


�� ���� ��ȭ 062-362-7797','������',to_date('20/08/17','RR/MM/DD'),5,'��÷�ڸ��.pdf','/upload/notice/2020/08/17/1301ab96-abe4-4311-8cd1-33c84581bd1a_��÷�ڸ��.pdf',27,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (30,'[����] �������� ���� �ý��� �۾� ����(ó���Ϸ�)','


�ȳ��ϼ���.
GOOD PARTNER ����Դϴ�.

���� ����Ȯ�� ���񽺹����� ���� 12:29�� ���� ��ġó���Ǿ����ϴ�.

�̿뿡 ������ ��� �˼��մϴ�.','������',to_date('20/08/17','RR/MM/DD'),0,null,null,29,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (32,'[����] Ȩ������ ȸ����� �絿�� �ȳ�','�ȳ��ϼ���.

GOOD PARTNER������ ���� ���ϰ� ������ ������Ʈ �̿��� ����
���ù��ɿ� ���� �������� ������ ���� �絿�Ǹ� �����ϰ� �ֽ��ϴ�.

ȸ������ �� 2���� ����� ȸ���� ���ؼ�
�������� �絿�Ǹ� ���� ���� ȸ���е��� Ż��ó���� �ǿ��� ���غ�Ź�帳�ϴ�.

<<���ñٰ�>>
�� ����������ȣ�� ��12��1��
�� ������ġ������� ���������� ó���� ���� ����, �������� ħ���� ���� �� ������ġ � ���� ǥ�� �������� ��ȣ��ħ(���� "ǥ����ħ"�̶� �Ѵ�)�� ���Ͽ� ��������ó���ڿ��� �� �ؼ��� ������ �� �ִ�.

�� ǥ�ذ���������ȣ��ħ ��60��3��
�� ��å��, Ȩ������ȸ�� ���� ȫ�� �� �뱹�μ��� ������ �ܺ� �� ��δ� Ư���� ��츦 �����ϰ�� 2���� �ֱ�� ������ü�� �絿�� ������ ���� ������ ��쿡�� ��������� ������ �� �ִ�.

�� �ѱ���������� ����������ȣ ��ħ ��14��3��
�� �뱹�μ��� ������ ȸ���������� ���� �����������Ͽ� ���ؼ��� Ư���� ��츦 �����ϰ�� 2���� �ֱ�� ������ü�� �絿�� ������ ���� ������ ��쿡�� ���������� ��������� ������ �� �ִ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),2,null,null,31,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (34,'[����] �������� �絿�� ó�� �Ŵ���','�ȳ��ϼ���.
GOOD PARTNER ����Դϴ�.

"�������� ������ ���� 2�ֳ� �絿�� " ���� ó������� ���� ���ǰ� ����
�ش� ������ ���� �Ŵ����� �����մϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),1,'���������絿��ó���Ŵ���.pdf','/upload/notice/2020/08/17/1cd251e4-1adf-4518-9665-58319f67344f_���������絿��ó���Ŵ���.pdf',33,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (36,'[�ȳ�] ������ ��ȭ���� ���� �ȳ�','�ȳ��ϼ���. GOOD PARTNER�ý��� ������Դϴ�.

�ڷγ�19 �������� ������ ���Ƿ��� �����Ͽ� ������ �����ǰ� �ֽ��ϴ�.

Ȩ������ �̿��� ���Ǵ� ��������� ���� ��Ź�帳�ϴ�.

�ٽ��ѹ� �̿뿡 ������ ��� �˼��մϴ�.

�����մϴ�.
','������',to_date('20/08/17','RR/MM/DD'),0,null,null,35,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (38,'[����] �Խ��� �̿�ȳ� �� ���۱� �ڷ� ��޿� ���� ����','ȸ�� ������ �ȳ��ϼ���. GOOD PARTNER�Դϴ�.

���� GOOD PARTNER�� �׻� �Ʋ��ֽð�, �̿����ֽô� ȸ�� �����е鲲 �������� ������ ������ �帳�ϴ�.
ȸ���Ե��� GOOD PARTNER�� �̿��Ͻôµ� �־ ���� ���ϰ� ������ Ȱ���� �Ͻ� �� �ֵ���,
������ ���� �ȳ������� �����Ͽ���, �ʵ��Ͽ� �ֽñ� �ٶ��ϴ�.

��GOOD PARTNER�� ���۱�, �ʻ��, Ÿ���� �Ǹ��� ħ���ϴ� �ڷ�� �������� �ʽ��ϴ�.
      - GOOD PARTNER�� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� �ڷ��� �����  �����մϴ�.
       ���� Ÿ���� ���۱�, �ʻ��, �� ���� Ÿ���� �Ǹ��� ħ���ϴ� ���� ��ϵǴ� ��� �뺸���� ������ �� �ֽ��ϴ�.
       ���� ���� ���� ��ġ���� �ұ��ϰ�, ���������� ���� �Խñ��� ��� �� ���, Ȱ������ �� ����ó�� �� �� �ֽ��ϴ�.
','������',to_date('20/08/17','RR/MM/DD'),3,null,null,37,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (40,'[����] GOOD PARTNER�� ��Ī�ϴ� �г����� ���� ��Ź�帳�ϴ�.','�ȳ��ϼ���. GOOD PARTNER ������ �Դϴ�.

���� GOOD PARTNER�� ȸ���Ե鲲 ��Ȯ�� ������ �����ϰ��� ����ϰ� �ֽ��ϴ�.
������ ��Ȥ GOOD PARTNER �����ڸ� ��Ī�Ͽ� ���� �Ǵ� ȫ���� �ϴ� ��찡 �߻��ϰ� �־� ���Ǹ� ��Ź�帮���� �մϴ�.

������ GOOD PARTNER�� �����ڴ� "admin"  �ϳ��� �����ϸ�, �� ��  �г����� ��� ��Ī�̴� ���� ��Ź�帳�ϴ�.

GOOD PARTNER �����縦 ��Ī�ϴ� �г����� �߰��ϽŴٸ� ��������  �ǰ� �� ���� �Խ������� �Ű� ��Ź�帳�ϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),1,null,null,39,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (42,'[��]"����ϰ� ���� �Ϲݰ�� �� �𿩶�!"  �Ϲݰ� Ưȭ �����ɷ°����Ʒ� �ȳ�','�ȳ��ϼ���

GOOD PARTNER ����Դϴ�.

''����ϰ� ���� �Ϲݰ�� �� �𿩶�! �Ϲݰ� Ưȭ �����ɷ°����Ʒ�''�� ������ ���� �ȳ��մϴ�.


�� �Ϲݰ� Ưȭ�����̶�?
�� ����� ����ϴ� �Ϲݰ� 3�г���� ����� �ʿ��� �����ɷ��� ������ �� �ֵ��� �����ϴ� ������ �Ʒ�

�� �Ʒô����?
�� ���п� �������� �ʰ� ����� ����ϴ� �Ϲݰ� 3�г� �л�

�� � ������ �Ʒ��� ���� �� �ֳ���?
�� �����Ⱓ��������������Ʒ� (�����Ʒ�)
- �װ�������, �ڵ�������, ��������������, ���⡤����, ����, 3D ������, �繰���ͳ� ��
�� �Ϲ������������Ʒ� (�������Ʒ� �Ǵ� ���Ϲ��ī��)
- �̿�, ����, ��������, �ٸ���Ÿ, �ְ߹̿�, �濵ȸ��, �������� ��

�� ���ð� �ǹ��� �����ΰ���?
�� (����) �Ʒú� ���� ����, 80% �̻� �⼮ �� �Ʒ������ ��11�� 6õ�� ����, �뵿�αǱ��� ����, ��3�л����� �̷���� ���Ϲ� �
* ���������Ű���� ������ ��� ����������񽺿� û�⳻��ä������� ���õ� ���� �� ����(����)
�� (�ǹ�) �Ʒñ���� �⼮ ���� �ؼ�, �Ʒù��� ���� ���� �ڰ��� �ݵ�� ���

�� Ưȭ���� �Ʒ�����
1) ��������
- 1�� ������ 2�г� 2�б�(9��)��, 6���� ������ 3�г� 1�б�(4��)�� �������� �ǽ�
- 17�� �á������� �������� ����� �ݿ��Ͽ� �������������� �Ʒñ�� ����
2) �Ʒð��� �߱� �� �Ʒ� ����
- ����û���б�����뼾�� ���� ���� ������� �Ʒñ���� Ȯ��
- ������ ��뼾�͸� �湮�Ͽ� �Ʒð��¸� �߱޹ް� �Ʒ� ����
- 1�� ������ 3��~���� �� 2������, 6���� ������ 9��~2������ �Ʒ� �ǽ�
3) �Ʒð��� ���� �� �����������
- �Ʒð����� �����ϸ� ��뼾�Ϳ� �Ʒñ������ ����� ���� �������� ����

�� 19�� �Ϲݱ� �Ϲݰ� Ưȭ���� �������� Ȯ���ϱ�
www.moel.go.kr/news/notice/noticeView.do?bbs_seq=20190700067


�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),4,'�Ϲݰ�Ưȭ�����ɷ°����Ʒþȳ�.jpg','/upload/notice/2020/08/17/6bbdccf5-3f66-4d58-b6ec-ad9279dd9285_�Ϲݰ�Ưȭ�����ɷ°����Ʒþȳ�.jpg',41,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (44,'[�ȳ�]Ȩ������ ����ȭ�� ������ ���� �ȳ�','�ȳ��ϼ���
GOOD PARTNER �ý��� �������Դϴ�.

���� ���� �����߿� �ִ� ��Ȩ������ �� ����� ������ ���� �Ϸ� ��(''20.8��)����
�ѽ������� ����ȭ���� �Ϻ� �����Ͽ� �(8.1~)���� �մϴ�.

���뿹�� ���� ȭ���� ÷�������� Ȯ���Ͻñ� �ٶ��ϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),6,'�þ�.PNG','/upload/notice/2020/08/17/594aad8e-2061-4cd3-9f04-de600cd6efea_�þ�.PNG',43,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (46,'[�ȳ�]������ (8�� 17��) �ӽð����� ������ ���� �ȳ��� ����','GOOD PARTNER �ý��۰����� �Դϴ�.

* 8�� 17��(��)�� �ӽð����Ϸ� �����ʿ� ����

������(�¶���, ��ȭ) ���� �� ��� �̿��� �Ұ����Ͽ��� GOOD PARTNER���� �̿뿡 ���� �ٶ��ϴ�.

�����մϴ�.','������',to_date('20/08/17','RR/MM/DD'),18,null,null,45,0,0);
Insert into ATEAM.WEB_NOTICE (ID,TITLE,CONTENT,WRITER,WRITEDATE,READCNT,FILENAME,FILEPATH,ROOT,STEP,INDENT) values (64,'���������Դϴ�','���������Դϴ�','������',to_date('20/08/20','RR/MM/DD'),0,null,null,63,0,0);
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
insert into study VALUES(:new.name,'�������', '00:00:00', sysdate);
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
