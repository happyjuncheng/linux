# 统计有多少种架构的rpm包
ls *.rpm | rev | cut -d. -f2 | rev | sort | uniq -c
ls | sed -r 's/.*\.(.*)\.rpm$/\1/' | sort | uniq -c

# 统计linux有多少行代码
find linux-4.18.13/ -name '*.c' -exec cat {} \; | wc -l
cat `find linux-4.18.13/ -name '*.c'` | wc -l
# 删除空行
find linux-4.18.13/ -name '*.c' -exec cat {} \; | grep -v '^$' | wc -l

# 批量更改配置
pssh -h iplist.txt -i 'sed -i "s/^SELINUX=.*/SELINUX=enforcing/" /etc/selinux/config'

# 查看端口
ss -ntl