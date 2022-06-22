CREATE TABLE `user_detail` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`first_name` varchar(20) NOT NULL,
`last_name` varchar(15) NOT NULL,
`email` varchar(100) NOT NULL,
`dob` varchar(16) NOT NULL,
PRIMARY KEY (`id`)
);

insert  into `user_detail`(`id`,`first_name`,`last_name`,`email`,`dob`)
values (1,'Андрей','Иванов','Andrey@mail.ru','30-08-1986'),
       (2,'Максим ','Петров','Maxim @mail.ru','25-09-1991');