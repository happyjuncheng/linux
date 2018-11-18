[! -d /etc/yum.repos.d/bak] && mkdir bak
[$? -eq 0] && mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/bak
cat > /etc/yum.repos.d/cd.repo <<EOF
[CD]
name=cdrom repo
baseurl=file:///misc/cd/
gpgkey=file:///misc/cd/RPM-GPG-KEY-CentOS-7
EOF
rpm -q httpd &> /dev/null || yum install httpd -y
