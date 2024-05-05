#!/bin/bash

# do NOT install RI or RDoc documentation
echo 'Disable download RI or RDoc documentation'
echo 'gem: --no-document' >> ~/.gemrc
echo
# for fug
# gem install bundler:2.2.16

# for jc
gem install bundler -v 2.4.22


if [ -f Gemfile ] ; then
  bundle install --jobs=8 --retry=3
else
  echo && echo 'Install Rails 5.1.7'
  # for Rails 5.1.7 compatibilty, comment out after Rails new  .
  gem install nokogiri -v 1.15.6
  # install Rails 5.1.7, comment out after Rails new  .
  gem install rails -v 5.1.7
fi
 