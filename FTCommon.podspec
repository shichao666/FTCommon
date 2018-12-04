Pod::Spec.new do |s| 
s.name = "FTCommon" 
s.version = "1.1.5"
s.summary = "福田iOS-APP公共模块 第一版"
s.description = "福田iOS-APP公共模块 第一版."
s.homepage = "https://github.com/shichao666/FTCommon" 
s.license= { :type => "MIT", :file => "LICENSE" }
s.author = { "shichao666" => "329585013@qq.com" } 

# /*.{h,m}
s.source_files = "FTCommon/**/*" 

s.source = { :git => "https://github.com/shichao666/FTCommon.git", :tag => s.version }
s.ios.deployment_target = '8.0' 
s.frameworks = 'UIKit' , 'Foundation'
s.requires_arc = true 
end
