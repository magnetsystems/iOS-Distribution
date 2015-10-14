Pod::Spec.new do |s|
  s.name     = 'MagnetMax'
  s.version            =  '3.0'
  s.license            =  { :type => 'Commercial', :text => 'See http://www.magnet.com/resources/tos.html' }
  s.summary            =  'Magnet\'s Max platform provides the best framework to deliver enterprise-grade mobile apps.'
  s.homepage           =  'https://www.magnet.com'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source   = { :git => 'https://github.com/magnetsystems/max-core-ios.git', :branch => 'develop' }
  s.source_files = 'MagnetMax/**/*.{swift,h,m}'
  s.requires_arc = true

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
  s.dependency 'MMX', '~> 2.0'
  s.dependency 'MagnetMobileServer', '~> 3.0'

  s.ios.deployment_target = '8.0'
end
