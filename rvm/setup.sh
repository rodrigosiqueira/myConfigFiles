# Reference: https://rvm.io/rvm/install

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

# Setup ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby
