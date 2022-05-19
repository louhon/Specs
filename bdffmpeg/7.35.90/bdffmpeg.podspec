Pod::Spec.new do |s|
  s.name     = 'bdffmpeg'
  s.version  = '7.35.90'
  s.summary  = 'bdffmpeg'
  s.homepage = 'https://yy.com/'
  s.license  = {
    :type => 'Copyright',
    :text => <<-LICENSE
    Copyright 2005-2020 YY Inc., All rights reserved.
    LICENSE
  }
  s.author = { 'yyinc' => 'marketing@yy.com' }
  s.source = { :http => "http://tekes.baidu-int.com:8181/repository/ios-public/ffmpeg/7.35.90/ffmpeg.zip" }

  s.default_subspec = 'bdffmpeg'

  s.subspec 'bdffmpeg' do |bdffmpeg|
    bdffmpeg.platform = :ios, '4.3'
    bdffmpeg.ios.deployment_target = '4.3'
    bdffmpeg.requires_arc = true
    bdffmpeg.xcconfig = {'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/ffmpeg/include', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ffmpeg/"' }
    bdffmpeg.header_mappings_dir = 'include'
    bdffmpeg.source_files	 = 'include/**/*.h','include/*.h'
    bdffmpeg.vendored_libraries = 'libffmpeg.a'
    bdffmpeg.libraries = 'ffmpeg'
  end

end
