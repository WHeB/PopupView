#
#  Be sure to run `pod spec lint WPPopupView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "WPPopupView"
  s.version      = "1.0"
  s.summary      = "自定义 Alert 弹窗；底部 Sheet 弹窗；气泡提示窗。"
  s.description  = <<-DESC
                   自定义 Alert 弹窗；底部 Sheet 弹窗；气泡提示窗。
                   DESC
  s.homepage     = "https://github.com/WHeB/PopupView"
  s.license      = "MIT"
  s.author             = { "WHeB" => "1193325271@qq.com" }
  s.platform     = :ios, "9.0"
  s.swift_version = '4.0'
  s.source       = { :git => "https://github.com/WHeB/PopupView.git", :tag => "#{s.version}" }
  s.source_files  = "WPPopupView/*.swift"
  s.framework   = "UIKit"

end
