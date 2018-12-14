Pod::Spec.new do |s| 
s.name = "FTCommon" 
s.version = "1.1.24"
s.summary = "福田iOS-APP公共模块 第一版"
s.description = "福田iOS-APP公共模块 第一版."
s.homepage = "https://github.com/shichao666/FTCommon" 
s.license= { :type => "MIT", :file => "LICENSE" }
s.author = { "shichao666" => "329585013@qq.com" } 


s.source = { :git => "https://github.com/shichao666/FTCommon.git", :tag => s.version }

# /*.{h,m}
# /**/*
# s.source_files = "FTCommon/**"

# s.subspec 'FTCategory' do |category|
# category.source_files = "FTCommon/Category/**/*"
# end

# s.subspec 'FTCustom' do |custom|
# custom.source_files = "FTCommon/Custom/**/*"
# end

# s.subspec 'FTManager' do |manager|
# manager.source_files = "FTCommon/manager/**/*"
# end

s.ios.deployment_target = '8.0' 
s.vendored_frameworks = 'FTCommon/*.{framework}'
s.frameworks = 'UIKit' , 'Foundation'
s.requires_arc = true 




end
