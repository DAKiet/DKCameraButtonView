#
#  Be sure to run `pod spec lint DKCameraButtonView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "DKCameraButtonView"
  spec.version      = "0.0.1"
  spec.summary      = "Library for applying Camera button"
  spec.description      = <<-DESC
This button allows you take photo or hold button.
                       DESC
  spec.homepage     = "https://github.com/DAKiet/DKCameraButtonView"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "DAKiet" => "doananhkiet65@gmail.com" }
  spec.social_media_url   = "https://twitter.com/DAKiet65"
  
  spec.swift_version = "4.0"
  spec.platform     = :ios, "14.0"
  spec.ios.deployment_target = "14.0"
  
  spec.source       = { :git => "https://github.com/DAKiet/DKCameraButtonView.git", :tag => "#{spec.version}" }

  spec.source_files = "DKCameraButtonView/DKCameraButtonView.swift"
  
  # spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"
  
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

end
