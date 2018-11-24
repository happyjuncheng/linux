while read line ;do
  # 这里无法用ssh批量建立帐号
  ssh $line useradd nginx
done < iplist.txt