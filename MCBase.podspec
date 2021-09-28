Pod::Spec.new do |s|
  s.name         = "MCBase"
  s.version      = "0.0.6"
  s.summary      = "MCBase can provide Dto, log, utils ... capatities"
  s.homepage     = "https://github.com/poholo/MCBase"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "littleplayer" => "mailjiancheng@163.com" }
  s.social_media_url   = "https://weibo.com/lp927"

  s.requires_arc = true

  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/poholo/MCBase.git", :tag => "#{s.version}" }

  s.default_subspec = 'All'

  s.subspec 'Dto' do |dto|
    dto.source_files = 'SDK/Dto/*.{h,m,mm}'
  end

  s.subspec 'Log' do |log|
    log.source_files = 'SDK/Log/*.{h,m,mm}'
  end

  s.subspec 'Utils' do |utils|
    utils.source_files = 'SDK/Utils/*.{h,m,mm}'
#    utils.dependency 'MCVersion'
  end

  s.subspec 'All' do |all|
    all.dependency 'MCBase/Dto'
    all.dependency 'MCBase/Log'
    all.dependency 'MCBase/Utils'
  end

  s.frameworks = "Foundation"
end
