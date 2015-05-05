Pod::Spec.new do |s|
  s.name               =  'MMX'
  s.version            =  '0.5.6'
  s.license            =  { :type => 'Commercial', :text => 'See http://www.magnet.com/resources/tos.html' }
  s.summary            =  'iOS framework for developing apps using the Magnet MMX platform.'
  s.homepage           =  'http://magnet.com'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'https://bitbucket.org/magneteng/ios-mmx-sdk.git', :branch=> 'reorg', :submodules => true}
  s.platform = :ios, '7.0'
  s.requires_arc = true
  
  s.source_files = 'MMX/Source/**/*.{h,m}'
  s.resources    = 'MMX/Source/CoreData/MMX.xcdatamodeld'

  s.frameworks     =  'Foundation', 'UIKit'
  s.xcconfig       =  { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-ObjC' } 
  s.dependency     'XMPPFramework', '~> 3.6.5'
  s.dependency     'MDMCoreData', '~> 1.4.0'
  s.dependency     'Mantle', '~>1.4'

end

