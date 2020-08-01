create  database sql1
go
use sql1
go
create table menu_items(
	id int not null primary key,
	item_name varchar(max),
	item_price decimal(10,2),
	item_availability varchar(3),
	item_launch_date date,
	item_category varchar(max),
	item_delivery varchar(3),
)	
go
create table users(
	user_Id int not null primary key,
	user_name varchar(max),
)
go
create table cart_Item(
	cart_id int not null primary key,
	users_id int FOREIGN KEY REFERENCES users(user_id),
	item_id int FOREIGN KEY REFERENCES menu_items(id)
	
)