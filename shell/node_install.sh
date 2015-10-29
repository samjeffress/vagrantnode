# ideas from 
# http://www.nearform.com/nodecrunch/nodejs-sudo-free/
# https://github.com/robertkowalski/vagrant-nvm/blob/master/provision.sh

# install nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
# setup path for node
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

# install stable version of node
nvm install stable
nvm alias default stable

# need to update npm after this step
npm install npm -g

# so paths don't get too long (globally)
npm config set bin-links false -g


# cd /vagrant
# found that this needed sudo, need to figure this out
# npm install