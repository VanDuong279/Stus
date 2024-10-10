create database stus;

create table `user` (
	user_id int primary key auto_increment,
    username varchar(50) not null,
    password varchar(30) not null,
    email varchar(50) not null,
    user_img varchar(255),
    time_create datetime not null,
    note text
);

create table post (
	post_id int primary key auto_increment,
    content varchar(255) not null,
    time_create_post datetime not null,
    user_id int ,
    foreign key(user_id) references `user`(user_id)
);

create table `like` (
	like_id int primary key auto_increment,
    post_id int not null,
    user_id int not null,
    time_create_like datetime not null,
    foreign key(post_id) references post(post_id),
    foreign key(user_id) references `user`(user_id)
);

create table `comment` (
	comment_id int primary key auto_increment,
    user_id int not null,
    post_id int not null,
    time_comment datetime not null,
    content_comment varchar(255) not null,
    foreign key(user_id) references `user`(user_id),
    foreign key(post_id) references post(post_id)
);

create table `share` (
	share_id int primary key auto_increment,
    user_id int not null, 
    post_id int not null,
    time_share datetime not null,
    foreign key(user_id) references `user`(user_id),
    foreign key(post_id) references post(post_id)
);

create table search (
	search_id int primary key auto_increment,
    user_id int not null,
    foreign key (user_id) references `user`(user_id)
);
