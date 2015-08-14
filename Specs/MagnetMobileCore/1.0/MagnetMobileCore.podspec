Pod::Spec.new do |s|
  s.name     = 'MagnetMobileCore'
  s.version            =  '1.0'
  s.license            =  { :type => 'Commercial', :text => 'See http://www.magnet.com/resources/tos.html' }
  s.summary            =  'Magnet\'s platform provides the best framework to deliver enterprise-grade mobile apps.'
  s.homepage           =  'https://www.magnet.com'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source   = { :git => 'https://github.com/magnetsystems/blowfish-ios-core.git', :tag => s.version }
  s.source_files = 'MagnetMobileCore'
  s.requires_arc = true

  s.ios.deployment_target = '8.0'
end
