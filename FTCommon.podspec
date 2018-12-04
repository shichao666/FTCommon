Pod::Spec.new do |s| 

s.name = "FTCommon" 
s.version = "1.0.0"
s.summary = "福田iOS-APP公共模块 第一版"
s.description = "福田iOS-APP公共模块 第一版."
s.homepage = "https://github.com/shichao666/FTCommon" 
s.social_media_url = ""
s.license= { :type => "MIT", :file => "LICENSE" }
s.author = { "shichao666" => "329585013@qq.com" } 
s.source = { :git => "https://github.com/shichao666/FTCommon.git", :tag => s.version }
s.source_files = "FTCommon/*.{h,m}" 
s.ios.deployment_target = '8.0' 
s.frameworks = 'UIKit' 
s.requires_arc = true 

end
