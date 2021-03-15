# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name = 'OpenCV'
  s.version = '4.5.1'
  s.summary = 'OpenCV (Computer Vision) for macOS.'
  s.homepage = 'http://github.com/Fueled/OpenCV-iOS-macOS'

  s.license = { type: 'Apache License, Version 2.0', file: 'LICENSE' }
  s.author = 'https://github.com/opencv/opencv/graphs/contributors'

  s.source = { http: "https://github.com/Fueled/OpenCV-iOS-macOS/releases/download/#{s.version}/opencv2-ios-macos.zip" }

  s.ios.deployment_target = '9.0'
  s.ios.header_mappings_dir = 'ios/opencv2.framework/Versions/A/Headers'
  s.ios.vendored_frameworks = 'ios/opencv2.framework'

  s.osx.deployment_target = '10.12'
  s.osx.header_mappings_dir = 'osx/opencv2.framework/Versions/A/Headers'
  s.osx.vendored_frameworks = 'osx/opencv2.framework'
  s.preserve_paths = '*'

  s.libraries = 'c++'
  s.requires_arc = false
  s.frameworks = 'Accelerate', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore'
  s.ios.frameworks = 'UIKit', 'AssetsLibrary'
  s.osx.frameworks = 'AppKit'

  s.prepare_command = "curl -L \"#{s.source[:http]}\" > opencv2-ios-macos.zip && unzip -o opencv2-ios-macos.zip -d ."
end
