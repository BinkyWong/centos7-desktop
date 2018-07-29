FROM centos:7

ADD /contents /

RUN yum -y install epel-release

RUN yum groupinstall "Server with GUI" "Xfce" -y

RUN yum -y install wget curl git firefox openssh-server passwd x2goserver-xsession google-chrome-stable; yum clean all

ADD ./start.sh /start.sh

RUN mkdir /var/run/sshd

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh

# EXPOSE 22

RUN ./start.sh

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
