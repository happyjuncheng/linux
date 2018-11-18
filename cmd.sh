# 统计有多少种架构的rpm包
ls *.rpm | rev | cut -d. -f2 | rev | sort | uniq -c
ls | sed -r 's/.*\.(.*)\.rpm$/\1/' | sort | uniq -c

# 统计linux有多少行代码
find linux-4.18.13/ -name '*.c' -exec cat {} \; | wc -l