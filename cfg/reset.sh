# alias grep='grep --color=auto'
# alias restartnet='service network restart'
# alias hr='service httpd restart'
# alias yy='yum -y install'
# alias yr='yum remove'
# alias cdnet='cd /etc/sysconfig/network-scripts/'
# alias vie0='vim /etc/sysconfig/network-scripts/ifcfg-eth0'
# alias vie1='vim /etc/sysconfig/network-scripts/ifcfg-eth1'
# alias scandisk='echo - - - > /sys/class/scsi_host/host2/scan'
# alias viht='vim /etc/httpd/conf/httpd.conf'
# alias cdhtml='cd /var/www/html'
# alias epel='sed -ri /enabled/s/enabled=1/enabled=0/ /etc/yum.repos.d/base.repo'
# alias disepel='sed -ri /enabled/s/enabled=1/enabled=0/ /etc/yum.repos.d/base.repo'

# 关闭selinux
sed -i /^SELINUX=enforcing/cSELINUX=disabled /etc/selinux/config
