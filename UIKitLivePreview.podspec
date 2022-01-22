Pod::Spec.new do |spec|

    spec.name         = "UIKitLivePreview"
    spec.version      = "1.3.0"
    spec.summary      = "SwiftUI live previews for UIKit"
    spec.description  = <<-DESC
                        UIKitLivePreview enables Xcode live previews for UIKit just like SwiftUI.
                     DESC
    spec.homepage     = "https://github.com/nicoelayda/UIKitLivePreview"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
  
    spec.author             = { "Dominic Elayda" => "nico@elayda.com" }
    spec.social_media_url   = "https://twitter.com/nicoelayda"
  
    spec.platform     = :ios, "12.0"
  
    spec.source       = { :git => "https://github.com/nicoelayda/UIKitLivePreview.git", :tag => "v#{spec.version}" }
    spec.source_files  = "Sources/**/*.swift"

    spec.swift_versions = ["5.0", "5.1", "5.2", "5.3", "5.4"]
  
  end
  