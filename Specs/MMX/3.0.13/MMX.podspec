Pod::Spec.new do |s|
  s.name               =  'MMX'
  s.version            =  '3.0.13'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'iOS framework for developing apps using the Magnet Message platform.'
  s.description        =  'Magnet Message is a powerful, open source mobile messaging framework enabling real-time user engagement for your mobile apps. Send relevant and targeted communications to customers or employees. Enhance your mobile app with actionable notifications, alerts, in-app events, two-way interactions and more. Get started and get coding in minutes!'
  s.homepage           =  'https://www.magnet.com/developer/magnet-message/'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'git@github.com:magnetsystems/message-ios-3.0.git', :branch => "release-3.0.13" }

  s.platform = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Source/**/*.{h,m,swift}'
  s.resources    = 'Source/CoreData/MMX.xcdatamodeld'

  s.frameworks     =  'Foundation', 'UIKit'
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES','ENABLE_BITCODE' => 'NO', 'SWIFT_VERSION' => '3.0' }

  s.dependency     'MMXXMPPFramework', '~> 3.6'
  s.dependency     'MagnetMaxCore', '3.0.13'
  s.dependency     'CocoaLumberjack', '~> 2.2'
  s.dependency     'CocoaAsyncSocket', '7.4.1'

end
