Pod::Spec.new do |s|
  s.name         = "VisionLab"
  s.version      = "0.2.0"
  s.summary      = "Common sources for projects using Vision framework"
  s.homepage     = "https://github.com/cocoa-ml/VisionLab"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Vadym Markov" => "markov.vadym@gmail.com" }
  s.social_media_url = 'https://twitter.com/vadymmarkov'
  s.ios.deployment_target = "11.0"
  s.source       = {
    :git => "https://github.com/cocoa-ml/VisionLab.git",
    :tag => s.version.to_s
  }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "UIKit", "Vision", "CoreML"
end
