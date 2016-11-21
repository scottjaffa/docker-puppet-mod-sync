FROM centos:latest
RUN yum -y install https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum -y install puppet-agent
CMD /opt/puppetlabs/bin/puppet agent -V
CMD cat /etc/puppet/testfile
#CMD /opt/puppetlabs/bin/puppet module search apache
CMD /opt/puppetlabs/bin/puppet module install puppetlabs-concat --target-dir /etc/puppet
