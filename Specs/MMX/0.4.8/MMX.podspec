Pod::Spec.new do |s|
  s.name               =  'MMX'
  s.version            =  '0.4.8'
  s.license            =  { :type => 'Commercial', :text => 'See http://www.magnet.com/resources/tos.html' }
  s.summary            =  'iOS framework for developing apps using the Magnet MMX platform.'
  s.homepage           =  'http://magnet.com'
  s.author             =  { 'Magnet Systems, Inc.' => 'support@magnet.com' }
  s.source             =  { :git => 'https://bitbucket.org/magneteng/temp-mmx-ios-sdk.git', :tag=> 'tag-release-0.4.8', :submodules => true}

  s.platform = :ios, '7.0'
  s.requires_arc = true
  
  s.preserve_paths = 'MMX.framework'
  s.public_header_files = "MMX.framework/Headers/*.h"
  s.vendored_frameworks = 'MMX.framework'
  
  s.resource       =  'MMX.bundle'
  s.frameworks     =  'Foundation', 'UIKit'
  s.xcconfig       =  { 'OTHER_LDFLAGS' => '-ObjC' } 
  s.dependency     'XMPPFramework', '~> 3.6.5'
  s.dependency     'MDMCoreData', '~> 1.4.0'
  s.dependency     'Mantle', '~>1.4'

end
