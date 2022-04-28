
-- 刘东东_begin_打板前-------------

-- 特殊存款补充表
-- begin execute immediate 'drop table kdpb_jltbcb'; exception when others then null; end;
-- drop table kdpb_jltbcb;

create table v7pro.kdpb_jltbcb (
  farendma varchar2(4)default '' not null , -- 法人代码               
  qiayleix varchar2(8), -- 签约类型               
  zhanghao varchar2(40), -- 负债账号 负债账号               
  glzhhaoo varchar2(40), -- 关联账号 关联账号               
  qyueriqi varchar2(8), -- 签约日期 签约日期               
  jieyriqi varchar2(8), -- 解约日期 解约日期               
  jinzriqi varchar2(8), -- 进组日期 进组日期               
  tuizriqi varchar2(8), -- 退组日期 退组日期               
  qyueguiy varchar2(8), -- 签约柜员 签约柜员               
  jieyguiy varchar2(8), -- 解约柜员 解约柜员               
  beizhuuu varchar2(200), -- 备注1               
  weihguiy varchar2(8)default '' not null , -- 维护柜员               
  weihjigo varchar2(12)default '' not null , -- 维护机构               
  weihriqi varchar2(8)not null , -- 维护日期               
  weihshij varchar2(9)default '' , -- 维护时间               
  shijchuo number(16)default '0' not null , -- 时间戳               
  jiluztai varchar2(1)not null -- 记录状态               
);

-- drop index kdpb_jltbcb_idx1;
create unique index v7pro.kdpb_jltbcb_idx1 on v7pro.kdpb_jltbcb (zhanghao,farendma) ;	
-- drop index kdpb_jltbcb_idx2;
create index v7pro.kdpb_jltbcb_idx2 on v7pro.kdpb_jltbcb (glzhhaoo,farendma) ;	
comment on table v7pro.kdpb_jltbcb is '特殊存款补充表'; 
comment on column v7pro.kdpb_jltbcb.farendma is '法人代码';
comment on column v7pro.kdpb_jltbcb.qiayleix is '签约类型(ZZCK0001-惠得利,ZZCK0002-盈物流,ZZCK0003-盈得利,ZZCK0004-享乐存,ZZCK0005-薪薪盈,ZZCK0006-存利盈,ZZCK0007-一加一账户,ZZCK0008-新集利存,ZZCK0009-梦想储蓄,ZZCK0010-智慧存)';
comment on column v7pro.kdpb_jltbcb.zhanghao is '负债账号';
comment on column v7pro.kdpb_jltbcb.glzhhaoo is '关联账号';
comment on column v7pro.kdpb_jltbcb.qyueriqi is '签约日期';
comment on column v7pro.kdpb_jltbcb.jieyriqi is '解约日期';
comment on column v7pro.kdpb_jltbcb.jinzriqi is '进组日期';
comment on column v7pro.kdpb_jltbcb.tuizriqi is '退组日期';
comment on column v7pro.kdpb_jltbcb.qyueguiy is '签约柜员';
comment on column v7pro.kdpb_jltbcb.jieyguiy is '解约柜员';
comment on column v7pro.kdpb_jltbcb.beizhuuu is '备注1';
comment on column v7pro.kdpb_jltbcb.weihguiy is '维护柜员';
comment on column v7pro.kdpb_jltbcb.weihjigo is '维护机构';
comment on column v7pro.kdpb_jltbcb.weihriqi is '维护日期';
comment on column v7pro.kdpb_jltbcb.weihshij is '维护时间';
comment on column v7pro.kdpb_jltbcb.shijchuo is '时间戳';
comment on column v7pro.kdpb_jltbcb.jiluztai is '记录状态(0-正常,1-删除)';


-- 刘东东_end_打板前-------------
