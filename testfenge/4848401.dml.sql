

-- ������_begin_���ǰ-------------

-- ��������
-- begin execute immediate 'drop table kdpb_jltbcb'; exception when others then null; end;
-- drop table kdpb_jltbcb;

create table v7pro.kdpb_jltbcb (
  farendma varchar2(4)default '' not null , -- ���˴���
  qiayleix varchar2(8), -- ǩԼ����
  zhanghao varchar2(40), -- ��ծ�˺� ��ծ�˺�
  glzhhaoo varchar2(40), -- �����˺� �����˺�
  qyueriqi varchar2(8), -- ǩԼ���� ǩԼ����
  jieyriqi varchar2(8), -- ��Լ���� ��Լ����
  jinzriqi varchar2(8), -- �������� ��������
  tuizriqi varchar2(8), -- �������� ��������
  qyueguiy varchar2(8), -- ǩԼ��Ա ǩԼ��Ա
  jieyguiy varchar2(8), -- ��Լ��Ա ��Լ��Ա
  beizhuuu varchar2(200), -- ��ע1
  weihguiy varchar2(8)default '' not null , -- ά����Ա
  weihjigo varchar2(12)default '' not null , -- ά������
  weihriqi varchar2(8)not null , -- ά������
  weihshij varchar2(9)default '' , -- ά��ʱ��
  shijchuo number(16)default '0' not null , -- ʱ���
  jiluztai varchar2(1)not null -- ��¼״̬
);

-- drop index kdpb_jltbcb_idx1;
create unique index v7pro.kdpb_jltbcb_idx1 on v7pro.kdpb_jltbcb (zhanghao,farendma) ;	
-- drop index kdpb_jltbcb_idx2;
create index v7pro.kdpb_jltbcb_idx2 on v7pro.kdpb_jltbcb (glzhhaoo,farendma) ;	
comment on table v7pro.kdpb_jltbcb is '��������'; 
comment on column v7pro.kdpb_jltbcb.farendma is '���˴���';
comment on column v7pro.kdpb_jltbcb.qiayleix is 'ǩԼ����(ZZCK0001-�ݵ���,ZZCK0002-ӯ����,ZZCK0003-ӯ����,ZZCK0004-���ִ�,ZZCK0005-ннӯ,ZZCK0006-����ӯ,ZZCK0007-һ��һ�˻�,ZZCK0008-�¼�����,ZZCK0009-���봢��,ZZCK0010-�ǻ۴�)';
comment on column v7pro.kdpb_jltbcb.zhanghao is '��ծ�˺�';
comment on column v7pro.kdpb_jltbcb.glzhhaoo is '�����˺�';
comment on column v7pro.kdpb_jltbcb.qyueriqi is 'ǩԼ����';
comment on column v7pro.kdpb_jltbcb.jieyriqi is '��Լ����';
comment on column v7pro.kdpb_jltbcb.jinzriqi is '��������';
comment on column v7pro.kdpb_jltbcb.tuizriqi is '��������';
comment on column v7pro.kdpb_jltbcb.qyueguiy is 'ǩԼ��Ա';
comment on column v7pro.kdpb_jltbcb.jieyguiy is '��Լ��Ա';
comment on column v7pro.kdpb_jltbcb.beizhuuu is '��ע1';
comment on column v7pro.kdpb_jltbcb.weihguiy is 'ά����Ա';
comment on column v7pro.kdpb_jltbcb.weihjigo is 'ά������';
comment on column v7pro.kdpb_jltbcb.weihriqi is 'ά������';
comment on column v7pro.kdpb_jltbcb.weihshij is 'ά��ʱ��';
comment on column v7pro.kdpb_jltbcb.shijchuo is 'ʱ���';
comment on column v7pro.kdpb_jltbcb.jiluztai is '��¼״̬(0-����,1-ɾ��)';


-- ������_end_���ǰ-------------
