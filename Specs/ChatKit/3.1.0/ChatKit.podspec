Pod::Spec.new do |s|
  s.name               =  'ChatKit'
  s.version            =  '3.1.0'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'iOS framework for developing apps using the Magnet Message platform.'
  s.description        =  'Magnet Message is a powerful, open source mobile messaging framework enabling real-time user engagement for your mobile apps. Send relevant and targeted communications to customers or employees. Enhance your mobile app with actionable notifications, alerts, in-app events, two-way interactions and more. Get started and get coding in minutes!'
  s.homepage           =  'https://www.magnet.com/developer/magnet-message/'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'https://github.com/magnetsystems/message-chatkit-ios-3.0.git', :branch => "develop_3.1.0" }
  #s.source             =  { :git => 'https://github.com/magnetsystems/message-chatkit-ios-3.0.git', :tag => "tag-develop-#{s.version}" }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.resources = ['ChatKit/source/**/*.{xib,storyboard,bundle,png,xcdatamodeld}']

  s.frameworks = 'QuartzCore', 'CoreGraphics', 'CoreLocation', 'MapKit', 'UIKit', 'Foundation', 'AudioToolbox', 'CoreData'

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES','ENABLE_BITCODE' => 'NO', 'SWIFT_VERSION' => '2.3' }
  s.user_target_xcconfig = { 'SWIFT_VERSION' => '2.3' }

  s.source_files = ['ChatKit/source/src/**/*.{h,m,swift}','ChatKit/source/Views/**/*.{h,m,swift}', 'ChatKit/source/ChatKit/**/*.{h,m,swift}']

  s.dependency 'MagnetMax', '3.1.0'
  s.dependency 'NYTPhotoViewer' , '~> 1.1.0'
  s.dependency 'DZVideoPlayerViewController'
end
