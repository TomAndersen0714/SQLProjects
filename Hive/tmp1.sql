-- 查询 imd_dm_safe.rrs_bdm_icustomer_merger_mid 表
-- 和 rpd_ecif_ods_safe.ecif_webank_base_info_output 表每个字段的差异数据量

CREATE TABLE IF NOT EXISTS rpd_ecif_ods_safe.ecif_webank_base_info_output
(
    ecif_no                        string COMMENT '客户号',
    personal_name                  string COMMENT ' 姓名',
    personal_identification_type   string COMMENT '证件类型',
    personal_identification_number string COMMENT '证件号码',
    gender                         string COMMENT '性别',
    nationality                    string COMMENT '国籍',
    validate                       string COMMENT '证件有效期',
    occupation_type                string COMMENT '职业',
    telephone_01                   string COMMENT '办公电话',
    telephone_02                   string COMMENT '住宅电话',
    telephone_04                   string COMMENT '移动电话',
    telephone_99                   string COMMENT '其他电话',
    address_01                     string COMMENT '居住地址',
    address_02                     string COMMENT '单位地址',
    address_03                     string COMMENT '户籍地址',
    address_10                     string COMMENT '通讯地址',
    address_99                     string COMMENT '其他地址',
    address_11                     string COMMENT '身份证地址',
    version                        string COMMENT '版本号'
)
    COMMENT '全行层九要素基础表'
    PARTITIONED BY (ds string)
    STORED AS ORC
    tblproperties ("orc.compress" = "SNAPPY");


