Pod::Spec.new do |s|
  s.name               = 'MagnetMax'
  s.version            =  '3.0.5'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'The first fully realized open mobile architecture created specifically for developing and deploying mobile-first enterprise applications.'
  s.homepage           =  'https://www.magnet.com/magnet-max/'
  s.author             =  { 'Magnet Systems, Inc.' => 'info@magnet.com' }
  s.source             =  { :git => 'git@github.com:magnetsystems/max-ios-3.0.git', :branch => "release-3.0.5" }

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'MagnetMax/*.{swift,h,m}'
  s.public_header_files = 'MagnetMax/*.h'
  
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'ENABLE_BITCODE'=>'NO', 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(SRCROOT)', 'SWIFT_VERSION' => '3.0' }

  s.dependency 'MMX', '~> 3.0.5'
  s.dependency 'MagnetMaxCore', '~> 3.0.5'

  s.ios.deployment_target = '8.0'
end
