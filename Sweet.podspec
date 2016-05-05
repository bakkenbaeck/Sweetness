Pod::Spec.new do |s|
  s.name             = "Sweet"
  s.summary          = "A collection of sugar and helpers for UIKit, CoreData, Foundation, Swift and others."
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/bakkenbaeck/Sweet"
  s.license          = 'MIT'
  s.author           = { "Bakken & Bæck AS" => "post@bakkenbaeck.no" }
  s.source           = { :git => "https://github.com/bakkenbaeck/Sweet.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bakkenbaeck'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Sources/**/*'
  s.dependency 'SweetCoreData'
  s.dependency 'SweetUIKit'
end
