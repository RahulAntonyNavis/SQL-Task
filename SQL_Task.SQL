---TASK-->1
create table Bank_Accounts (
account_id      number primary key,
bank_acc_no   varchar(30) unique,
recon_type      varchar2(30),
cat_code        varchar(20),
sub_Acc_no      varchar2(30),
status          varchar2(10) default 'ACTIVE');

---TASK-->2
Create table item (
item_id     number primary key,
bank_acc_no varchar2(30),
txn_reference   varchar2(50),
txn_amount      number(12, 4),
drocr            char(1),
txn_ccy         varchar2(3),
stmt_date       date,
system_entry_date   timestamp,
value_date              date,
item_type           varchar2(20),
txn_stock_code      varchar2(12),
stock_id            number,
quantity            NUMBER(12, 4),
price               number(12, 4),
foreign key (bank_acc_no) references Bank_Accounts(bank_acc_no));


---TASK-->3
create table Asset_Register (
stock_id    NUMBER PRIMARY KEY,
stock_code      varchar2(12),
description     varchar2(100),
asset_type      varchar2(20));


---TASK-->4
create table Closing_Balances (
cb_id       number primary key,
bank_acc_no     varchar2(30),
cbal_date       date,
cbal_amount     number(12, 4),
currency_code   VARCHAR2(3),
foreign key (bank_Acc_no) references Bank_Accounts(bank_Acc_no) );


---TASK-->5
ALter table bank_accounts
add Currency Varchar2(3) NOT NULL;


insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100001, 'ACC1001','Cash','NOSTROASIA','SUB001','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100002, 'ACC1002','Stock','STCKEMEA','SUB002','ACTIVE','CHF');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100003, 'ACC1003','Trade','STCKAMER','SUB003','INACTIVE','NOK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100004, 'ACC1004','Cash','NOSTROASIA','SUB004','ACTIVE','NOK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100005, 'ACC1005','Stock','STCKEMEA','SUB005','ACTIVE','SGD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100006, 'ACC1006','Trade','STCKAMER','SUB006','INACTIVE','PLN');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100007, 'ACC1007','Cash','NOSTROASIA','SUB007','ACTIVE','SGD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100008, 'ACC1008','Stock','STCKEMEA','SUB008','ACTIVE','PLN');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100009, 'ACC1009','Trade','STCKAMER','SUB009','ACTIVE','SEK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100010, 'ACC1010','Cash','NOSTROASIA','SUB010','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100011, 'ACC1011','Trade','STCKEMEA','SUB0011','ACTIVE','GBP');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100012, 'ACC1012','Cash','CASHAMER','SUB0012','ACTIVE','EUR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100013, 'ACC1013','Stock','MIDDLEEAST','SUB0013','ACTIVE','GBP');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100014, 'ACC1014','Trade','INTERNAL','SUB0014','ACTIVE','INR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100015, 'ACC1015','Cash','NOSTROASIA','SUB0015','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100016, 'ACC1016','Stock','STCKEMEA','SUB0016','ACTIVE','THB');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100017, 'ACC1017','Trade','STCKAMER','SUB0017','ACTIVE','THB');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100018, 'ACC1018','Cash','MIDDLEEAST','SUB0018','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100019, 'ACC1019','Stock','INTERNAL','SUB0019','ACTIVE','EUR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100020, 'ACC1020','Trade','STCKASIA','SUB0020','INACTIVE','KWD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100021, 'ACC1021','Cash','NOSTROEMEA','SUB0021','ACTIVE','EUR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100022, 'ACC1022','Stock','STCKAMER','SUB0022','ACTIVE','CZK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100023, 'ACC1023','Trade','MIDDLEEAST','SUB0023','ACTIVE','JPY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100024, 'ACC1024','Cash','INTERNAL','SUB0024','ACTIVE','CZK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100025, 'ACC1025','Stock','STCKASIA','SUB0025','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100026, 'ACC1026','Trade','STCKEMEA','SUB0026','ACTIVE','DKK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100027, 'ACC1027','Cash','CASHAMER','SUB0027','ACTIVE','INR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100028, 'ACC1028','Stock','MIDDLEEAST','SUB0028','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100029, 'ACC1029','Trade','INTERNAL','SUB0029','ACTIVE','AUD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100030, 'ACC1030','Cash','CASHASIA','SUB0030','INACTIVE','SEK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100031, 'ACC1031','Stock','STCKEMEA','SUB0031','ACTIVE','CNY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100032, 'ACC1032','Trade','STCKAMER','SUB0032','ACTIVE','DKK');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100033, 'ACC1033','Cash','MIDDLEEAST','SUB0033','ACTIVE','EUR');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100034, 'ACC1034','Stock','INTERNAL','SUB0034','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100035, 'ACC1035','Trade','STCKASIA','SUB0035','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100036, 'ACC1036','Cash','NOSTROEMEA','SUB0036','ACTIVE','CHF');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100037, 'ACC1037','Stock','STCKAMER','SUB0037','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100038, 'ACC1038','Trade','MIDDLEEAST','SUB0038','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100039, 'ACC1039','Cash','INTERNAL','SUB0039','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100040, 'ACC1040','Stock','STCKASIA','SUB0040','INACTIVE','CNY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100041, 'ACC1041','Trade','STCKEMEA','SUB0041','ACTIVE','JPY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100042, 'ACC1042','Cash','NOSTROAMER','SUB0042','ACTIVE','CHF');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100043, 'ACC1043','Stock','MIDDLEEAST','SUB0043','ACTIVE','AED');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100044, 'ACC1044','Trade','INTERNAL','SUB0044','ACTIVE','CNY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100045, 'ACC1045','Cash','CASHASIA','SUB0045','ACTIVE','GBP');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100046, 'ACC1046','Stock','STCKEMEA','SUB0046','ACTIVE','USD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100047, 'ACC1047','Trade','STCKAMER','SUB0047','ACTIVE','CAD');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100048, 'ACC1048','Cash','MIDDLEEAST','SUB0048','ACTIVE','JPY');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100049, 'ACC1049','Stock','INTERNAL','SUB0049','ACTIVE','AED');
insert into Bank_accounts (account_id, bank_acc_no,  recon_type, cat_code, sub_Acc_no, status, Currency ) values(100050, 'ACC1050','Trade','STCKASIA','SUB0050','INACTIVE','CAS');


---TASK--->6
create sequence item_seq
start with 1000001
increment by 1
nocycle
nocache;

alter table bank_accounts add Source_Code   Varchar2(20);

Update bank_accounts set Source_Code =
Case 
       when cat_code like '%AMER%' THEN 'ATYETI-US'
              when cat_code like '%APAC%' THEN 'ATYETI-IN'
                     when cat_code like '%EMEA%' THEN 'ATYETI-UK'
                     ELSE 'ATYETI-GLOBAL' end;
        
        
        ---TASK---->7
Create table temp_item (
bank_acc_no varchar2(30),
txn_reference   varchar2(50),
txn_amount      number(12, 4),
drocr            char(1),
txn_ccy         varchar2(3),
stmt_date       date,
value_date              date,
item_type           varchar2(20),
txn_stock_code      varchar2(12),
stock_id            number,
quantity            NUMBER(12, 4),
price               number(12, 4));

---Import csv for temp_item table
insert into item (item_id,bank_acc_no,txn_reference,txn_amount,drocr,txn_ccy,stmt_date,system_entry_date,value_date,item_type,txn_stock_code,stock_id,quantity,price)
select  item_seq.nextval,bank_acc_no,txn_reference,txn_amount,drocr,txn_ccy,stmt_date,SYSTIMESTAMP,value_date,item_type,txn_stock_code,stock_id,quantity,price from temp_item;
 commit;



---TASK---->8
--Import from Asset_Register

create table asset_register_links as select * from asset_register;

alter table asset_register rename column Stock_Code to Master_Stock_Code;

select * from asset_register_links;

select ar.stock_id,
    ar.master_stock_code,
    ar.description,
    ar.asset_type
    from asset_register ar
    inner join asset_register_links arl
    on ar.stock_id = arl.stock_id and
        ar.master_stock_code
        = arl.stock_code and
        ar.asset_type = arl.asset_type;
        
        
        
select stock_id,     
        MAX(CASE when asset_type = 'ISIN' THEN STOCK_CODE END) AS ISIN,
                MAX(CASE when asset_type = 'CUSIP' THEN STOCK_CODE END) AS CUSIP,
                        MAX(CASE when asset_type = 'SEDOL' THEN STOCK_CODE END) AS SEDOL
                        from asset_register_links group by stock_id order by stock_id;
                        
                        
create table asset_lookup (
ISIN        varchar2(20),
CUSIP       varchar2(20),
SEDOL       varchar2(20));


insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('US0378331005', '37833100', '2046251');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('US0231351067', '23135106', '2000019');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('US5949181045', '594918104', '2588173');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('US64110L1061', '64110L106', 'B7N0F01');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('GB0005405286', '', '540528');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('GB0007980591', '', '798059');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('GB00B10RZP78', '', 'B10RZP7');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE090A01021', '', '6100129');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE002A01018', '', '6099626');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE467B01029', '', '6121927');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE238A01034', '', '6120346');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE397D01024', '', '6305129');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE154A01025', '', '6453022');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE522F01014', '', 'B3CBLV4');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE213A01029', '', '6100037');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE001A01036', '', '6100200');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE009A01021', '', '6109952');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE030A01027', '', '6261674');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE101A01026', '', '6100995');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE296A01024', '', '6347321');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE018A01030', '', '6127489');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE062A01020', '', '6108406');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE155A01022', '', '6108489');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE733E01010', '', 'B0RTYW4');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE075A01022', '', '6101684');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE752E01010', '', 'B101R82');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE481G01011', '', 'B0DZPK7');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE089A01023', '', '6100920');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE021A01026', '', '6124916');
insert into asset_lookup (ISIN, CUSIP, SEDOL) values ('INE423A01024', '', '6437324');

merge into asset_register_links target using (
select al.cusip as stock_code,
       ar.stock_id,
       ar.description from asset_lookup al
       join asset_register_links ar on al.isin = ar.stock_code and ar.asset_type = 'ISIN'
       where al.cusip is not null)
source on (target.stock_code = source.stock_code and target.asset_type = 'CUSIP')
WHEN NOT MATCHED THEN
insert (stock_id, stock_code, asset_type, description) values (source.stock_id,source.stock_code, 'CUSIP', source.description);

merge into asset_register_links target using (
select al.sedol as stock_code,
       ar.stock_id,
       ar.description from asset_lookup al
       join asset_register_links ar on al.isin = ar.stock_code and ar.asset_type = 'ISIN'
       where al.sedol is not null)
source on (target.stock_code = source.stock_code and target.asset_type = 'SEDOL')
WHEN NOT MATCHED THEN
insert (stock_id, stock_code, asset_type, description) values (source.stock_id,source.stock_code, 'SEDOL', source.description);



select * from asset_register_links where asset_type in ('CUSIP','SEDOL','ISIN')
and stock_code in (select cusip from asset_lookup
                        union
                    select sedol from asset_lookup
                        union
                     select isin from asset_lookup) order by stock_id;

