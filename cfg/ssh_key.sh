#!/bin/bash
#批量创建key验证

user=zjc
password=1983
ssh-keygen -t rsa -P '' -f /root/.ssh/id_rsa

while read ip ;do
  expect << EOF
  set timeout 10
  spawn ssh-copy-id -i /root/.ssh/id_rsa.pub $user@$ip
  expect {
    'yes/no' { send "yes\n";exp_continue }
    'password' { send '$password\n' }
  }
done < iplist.txt