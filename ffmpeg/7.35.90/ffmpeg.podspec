Pod::Spec.new do |s|
  s.name     = 'ffmpeg'
  s.version  = '7.35.90'
  s.summary  = 'ffmpeg'
  s.homepage = 'https://yy.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'yyinc' => 'marketing@yy.com' }
  s.source = { :http => "http://tekes.baidu-int.com:8181/repository/ios-public/ffmpeg/7.35.90/ffmpeg.zip" }

  s.default_subspec = 'ffmpeg'

  s.subspec 'ffmpeg' do |ffmpeg|
    bdyuv.platform = :ios, '4.3'
    bdyuv.ios.deployment_target = '4.3'
    
    bdyuv.requires_arc = true
    bdyuv.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ffmpeg/"' }
    bdyuv.source_files = 'include/*.h'
    bdyuv.vendored_libraries = 'libffmpeg.a'
    bdyuv.libraries = 'yuv'
  end

end
