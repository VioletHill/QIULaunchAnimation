#
#  Be sure to run `pod spec lint QIULaunchAnimation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "QIULaunchAnimation"
  s.version      = "0.0.1"
  s.summary      = "Launch animation like Twitter"
                   
  s.homepage     = "https://github.com/VioletHill/QIULaunchAnimation"
  s.license      = 'MIT'  
  s.author       = { "QiuFeng" => "qfviolethill@163.com" }
  s.source       = { :git => "https://github.com/VioletHill/QIULaunchAnimation.git", :tag => "0.0.1" }
  s.source_files = 'src/*.{h,m}'
  s.framework  = 'UIKit'
  s.platform     = :ios, '7.0'
  s.requires_arc = true  


end
