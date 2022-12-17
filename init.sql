alter user 'root'@'localhost' identified with mysql_native_password by 'secret';
alter user 'root'@'%' identified with mysql_native_password by 'secret';
flush privileges;
