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
    ffmpeg.platform = :ios, '4.3'
    ffmpeg.ios.deployment_target = '4.3'
    
    ffmpeg.requires_arc = true
    ffmpeg.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ffmpeg/"' }
    ffmpeg.header_mappings_dir = 'include'
    ffmpeg.source_files	 = 'include/**/*.h','include/*.h'
    ffmpeg.vendored_libraries = 'libffmpeg.a'
    ffmpeg.libraries = 'ffmpeg'
  end

end
