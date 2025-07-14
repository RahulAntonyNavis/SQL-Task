create table Bank_Accounts (
account_id      number primary key,
bank_acc_no   varchar(30) unique,
recon_type      varchar2(30),
cat_code        varchar(20),
sub_Acc_no      varchar2(30),
status          varchar2(10) default 'ACTIVE');

Create table item (
item_id     number primary key,
bank_acc_no varchar2(30),
txn_reference   varchar2(50),
txn_amount      number(12, 4),
docr            char(1),
txn_ccy         varchar2(3),
stmt_date       date,
sustem_entry_date   timestamp,
value_date              date,
item_type           varchar2(20),
txn_stock_code      varchar2(12),
stock_id            number,
quantity            NUMBER(12, 4),
price               number(12, 4),
foreign key (bank_acc_no) references Bank_Accounts(bank_acc_no));

create table Asset_Register (
stock_id    NUMBER PRIMARY KEY,
stock_code      varchar2(12),
description     varchar2(100),
asset_type      varchar2(20));

create table Closing_Balance (
cb_id       number primary key,
bank_acc_no     varchar2(30),
cbal_date       date,
cbal_amount     number(12, 4),
currency_code   VARCHAR2(3),
foreign key (bank_Acc_no) references Bank_Accounts(bank_Acc_no) );

