#
#  Be sure to run `pod spec lint SGAppKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name         = 'SGAppKit'
    s.version      = '0.1.5'
    s.summary      = 'category'
    s.homepage     = 'https://github.com/kingsic/SGAppKit'
    s.license      = 'MIT'
    s.authors      = {'kingsic' => 'kingsic@126.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/kingsic/SGAppKit.git', :tag => s.version}
    s.source_files = 'SGAppKit/**/*.{h,m}'
    s.requires_arc = true
end
