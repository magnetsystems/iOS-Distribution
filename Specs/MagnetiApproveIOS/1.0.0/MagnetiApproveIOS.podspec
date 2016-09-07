Pod::Spec.new do |s|
  s.name               =  'MagnetiApproveIOS'
  s.version            =  '1.0.0'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'iOS framework for developing apps using the Magnet Message platform, With iApprove.'
  s.description        =  'Magnet Message is a powerful, open source mobile messaging framework enabling real-time user engagement for your mobile apps. Send relevant and targeted communications to customers or employees. Enhance your mobile app with actionable notifications, alerts, in-app events, two-way interactions and more. Get started and get coding in minutes!'
  s.homepage           =  'https://www.magnet.com/developer/magnet-message/'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }

  s.source             =  { :git => 'git@github.com:magnetsystems/iapprove.git', :branch => "master" }
  #s.source             =  { :git => 'git@github.com:magnetsystems/iapprove.git', :tag => "tag-develop-#{s.version}" }

  s.platform = :ios, '8.0'
  s.requires_arc = true

  #s.resources = ['MagnetiApproveIOS/**/*.{xib,storyboard,bundle,png,xcdatamodeld}']
  s.source_files = 'MagnetiApproveIOS/**/*.{h,m,swift}'

  s.frameworks     =  'Foundation', 'UIKit'
  s.xcconfig       =  { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES','ENABLE_BITCODE' => 'NO'}

  s.subspec 'Private' do |ss|
    ss.source_files = ['MagnetiApproveIOS/Private/**/*.{h,m,swift}']
    ss.dependency 'MagnetiApproveIOS/PublicCommon', '~> 1.0.0'
  end

  s.subspec 'PublicCommon' do |ss|
    ss.source_files = ['MagnetiApproveIOS/Common/**/*.{h,m,swift}']
    ss.dependency 'MagnetMax', '~> 3.0.0'

  end

  s.subspec 'Public' do |ss|
    ss.source_files = 'MagnetiApproveIOS/Public/**/*.{h,m,swift}'
    ss.dependency 'MagnetiApproveIOS/Private', '~> 1.0.0'
  end
end
