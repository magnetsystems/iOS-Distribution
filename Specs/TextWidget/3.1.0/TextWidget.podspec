Pod::Spec.new do |s|
  s.name               =  'TextWidget'
  s.version            =  '3.1.0'
  s.license            =  { :type => 'Apache 2.0' }
  s.summary            =  'TextWidget'
  s.description        =  'TextWidget'
  s.homepage           =  'https://www.magnet.com/developer/magnet-message/'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'https://github.com/magnetsystems/chatkit-widgets.git', :branch => "release-3.1.0" }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.resources = ['text-widget/source/**/*.{xib,storyboard,bundle,png,xcdatamodeld}']

  s.frameworks = 'UIKit', 'Foundation'

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES','ENABLE_BITCODE' => 'NO', 'SWIFT_VERSION' => '3.0' }

  s.source_files = ['text-widget/source/**/*.{h,m,swift}']
  s.dependency 'WidgetKit', '3.1.0'

end
