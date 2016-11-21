# docker-puppet-mod-sync
A docker file that can be used to pull puppet forge modules for offline consumption

Setup commands:  
Directory for modules to export to:  
mkdir /srv/puppet  

Clone repository and change to directory:  
docker build -t puppet-mod-sync .  
docker run --volume /srv/puppet:/etc/puppet:Z puppet-mod-sync  
