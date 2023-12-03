新老客户信息表的对比九要素字段差异，对比最近的结果3个分区的数据，看看每个字段不同的数量，

源表：imd_dm_safe.rrs_bdm_icustomer_merger_mid
新表：rpd_ecif_ods_safe.ecif_webank_base_info_output

对比字段如下：
CREATE TABLE  IF NOT EXISTS rpd_ecif_ods_safe.ecif_webank_base_info_output (
  ecif_no String COMMENT '客户号',
  personal_name String  COMMENT ' 姓名',

  personal_identification_type  String COMMENT '证件类型',
  personal_identification_number  String COMMENT '证件号码',

  gender  String COMMENT '性别',

  nationality   String COMMENT  '国籍',

  validate  String COMMENT '证件有效期',

  occupation_type   String COMMENT '职业' ,

  telephone_01  String COMMENT '办公电话',

  telephone_02  String COMMENT '住宅电话',

  telephone_04 String COMMENT '移动电话',

  telephone_99  String COMMENT '其他电话',

  address_01  String  COMMENT '居住地址' ,

  address_02  String COMMENT '单位地址' ,

  address_03  String COMMENT '户籍地址' ,

  address_10  String COMMENT '通讯地址' ,

  address_99  String COMMENT '其他地址' ,

  address_11  String COMMENT '身份证地址' ,

  version String COMMENT '版本号'
)
COMMENT '全行层九要素基础表'
PARTITIONED BY (ds string)
STORED AS ORC
tblproperties ("orc.compress"="SNAPPY");

帮忙到ecc，摸一下数据

