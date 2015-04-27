require 'open-uri'

default[:selenium][:user] = 'seleniumuser'
default[:selenium][:home] = '/home/seleniumuser/'

#hub config
default[:selenium][:server][:version] = '2.45.0'
default[:selenium][:server][:installpath] = default[:selenium][:home]+'selenium'
default[:selenium][:server][:standalonefile] = default[:selenium][:home]+'selenium'

#advanced hub config
default[:selenium][:server][:nodePolling] = '5000'
default[:selenium][:server][:cleanUpCycle] = '5000'
default[:selenium][:server][:timeout] = '300000'
default[:selenium][:server][:maxSession] = '5'

#nodes config
default[:selenium][:server][:hubport] = '4444'
default[:selenium][:node][:hubhost] = 'localhost'
default[:selenium][:node][:port] = '5555'
default[:selenium][:node][:maxSession] = '5'

default[:selenium][:xvfb][:display] = ':98'
default[:selenium][:xvfb][:fbsize] = '1280x1024x16'

default[:selenium][:chromedriver_version] = open('http://chromedriver.storage.googleapis.com/LATEST_RELEASE').read
default[:selenium][:firefox_version] = 'latest'
set[:firefox][:version] = node[:selenium][:firefox_version]