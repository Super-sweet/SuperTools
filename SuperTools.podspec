
echo 4.0 >.swift-version
Pod::Spec.new do |s|

  s.name         = "SuperTools"
  s.version      = "0.0.3"
  s.summary      = "开发的一些工具."

  s.description  = <<-DESC
	工具
                   DESC

  s.homepage     = "https://github.com/Super-sweet/SuperTools"

  s.license      = "MIT"


  s.author       = { "Super-sweet" => "347393193@qq.com" }
  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/Super-sweet/SuperTools.git", :tag => s.version }


  s.source_files  = "SuperTools/Super/**/*"
  s.frameworks    = "UIKit", "Foundation"
  s.requires_arc = true


end