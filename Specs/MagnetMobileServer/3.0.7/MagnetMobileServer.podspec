Pod::Spec.new do |s|
  s.name               =  'MagnetMobileServer'
  s.version            =  '3.0.7'
  s.license            =  { :type => 'Commercial', :text => 'See http://www.magnet.com/resources/tos.html' }
  s.summary            =  'Magnet\'s platform provides the best framework to deliver enterprise-grade mobile apps.'
  s.homepage           =  'https://www.magnet.com'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  #s.source             =  { :git => 'https://github.com/magnetsystems/blowfish-ios-sdk.git', :tag => s.version }
  s.source             =  { :git => 'https://github.com/magnetsystems/blowfish-ios-sdk.git', :branch => 'master'}

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'MagnetMobileServer/*.{h,m}',
                   'MagnetMobileServer/Internal/**/*.{h,m}'
  s.public_header_files = 'MagnetMobileServer/*.h'

  # s.resource       =  'Bundles/MagnetMobileServer.bundle'
  s.frameworks     =  'Foundation', 'UIKit', 'CFNetwork' , 'Security'
  s.xcconfig       =  { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  s.dependency 'AFNetworking/NSURLConnection', '2.5.4'
  s.dependency 'AFNetworking/NSURLSession', '2.5.4'
  s.dependency 'CocoaLumberjack', '~> 2.0.1'
  s.dependency 'Mantle', '~> 1.5'
  s.dependency 'libextobjc', '~> 0.4'
  s.dependency 'MagnetMobileCore', '~> 1.0'
  # s.dependency     'MDMCoreData', '~> 1.0'
  # s.dependency     'RNCryptor', '~> 2.2'
  s.libraries      = "icucore"

end
