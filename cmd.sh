# 统计有多少种架构的rpm包
ls *.rpm | rev | cut -d. -f2 | rev | sort | uniq -c
ls | sed -r 's/.*\.(.*)\.rpm$/\1/' | sort | uniq -c