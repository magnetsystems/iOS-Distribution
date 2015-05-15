Pod::Spec.new do |s|
  s.name               =  'MMX'
  s.version            =  '1.0.1'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'iOS framework for developing apps using the Magnet Message platform.'
  s.description        =  'Magnet Message is a powerful, open source mobile messaging framework enabling real-time user engagement for your mobile apps. Send relevant and targeted communications to customers or employees. Enhance your mobile app with actionable notifications, alerts, in-app events, two-way interactions and more. Get started and get coding in minutes!'
  s.homepage           =  'https://www.magnet.com/'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'https://github.com/magnetsystems/message-ios.git', :tag=> 'release-1.0.1-RC5', :submodules => true}
  s.platform = :ios, '7.0'
  s.requires_arc = true
  
  s.source_files = 'Source/**/*.{h,m}'
  s.resources    = 'Source/CoreData/MMX.xcdatamodeld'

  s.frameworks     =  'Foundation', 'UIKit'
  s.xcconfig       =  { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC' } 
  s.dependency     'Magnet-XMPPFramework', '~> 3.6.6'
  s.dependency     'MDMCoreData', '~> 1.4.0'
  s.dependency     'Mantle', '~>1.4'

end
