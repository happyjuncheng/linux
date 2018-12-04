# 初次安装设置密码
/usr/bin/mysqladmin -u root password 'new-password'
/usr/bin/mysqladmin -u root -h centos6.localdomain password 'new-password'

# 运行安全脚本
/usr/bin/mysql_secure_installation