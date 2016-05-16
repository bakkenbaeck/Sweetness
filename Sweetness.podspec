Pod::Spec.new do |s|
  s.name             = "Sweetness"
  s.summary          = "A collection of sugar and helpers for UIKit, CoreData, Foundation, Swift and more."
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/bakkenbaeck/Sweetness"
  s.license          = 'MIT'
  s.author           = { "Bakken & Bæck AS" => "post@bakkenbaeck.no" }
  s.source           = { :git => "https://github.com/bakkenbaeck/Sweetness.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bakkenbaeck'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.dependency 'SweetCoreData'
  s.dependency 'SweetUIKit'
end
