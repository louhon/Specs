Pod::Spec.new do |s|
  s.name     = 'ffmpeg-bd'
  s.version  = '7.35.90'
  s.summary  = 'ffmpeg-bd'
  s.homepage = 'https://yy.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'yyinc' => 'marketing@yy.com' }
  s.source = { :http => "http://tekes.baidu-int.com:8181/repository/ios-public/ffmpeg/7.35.90/ffmpeg.zip" }

  s.default_subspec = 'ffmpeg-bd'

  s.subspec 'ffmpeg-bd' do |ffmpeg-bd|
    ffmpeg-bd.platform = :ios, '4.3'
    ffmpeg-bd.ios.deployment_target = '4.3'
    ffmpeg-bd.requires_arc = true
    ffmpeg-bd.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ffmpeg/"' }
    ffmpeg-bd.header_mappings_dir = 'include'
    ffmpeg-bd.source_files	 = 'include/**/*.h','include/*.h'
    ffmpeg-bd.vendored_libraries = 'libffmpeg.a'
    ffmpeg-bd.libraries = 'ffmpeg'
  end

end
