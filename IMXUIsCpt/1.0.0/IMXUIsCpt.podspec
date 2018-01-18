#
#  Be sure to run `pod spec lint IMXUIsCptPodspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "IMXUIsCpt"
  s.version      = "1.0.0"
  s.summary      = "IMXUIsCpt:UIs componet sets."

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "zhoupanpan" => "2331838272@qq.com" }
  
  s.platform     = :ios, "8.0"
  #s.ios.deployment_target = '8.0' #  When using multiple platforms

  s.homepage     = "https://github.com/PanZhow/IMXUIsCpt.git"
  s.source       = { :git => "https://github.com/PanZhow/IMXUIsCpt.git", :tag => "#{s.version}" }

  s.requires_arc = true


# IMXUIKitExt Cpt
  s.subspec 'IMXUIKitExt' do |uext|
    uext.source_files  = 'IMXUIsCpt/Libs/2nd/IMXUIKitExt/*.{h,m}'
    uext.public_header_files = [
      'IMXUIsCpt/Libs/2nd/IMXUIKitExt/*.{h}'
    ]
  end
# IMXStyleKit Cpt
  s.subspec 'IMXStyleKit' do |style|
    style.source_files  = 'IMXUIsCpt/Utils/IMXStyleKit/*.{h,m}'
    style.public_header_files = [
      'IMXUIsCpt/Utils/IMXStyleKit/*.{h}'
    ]

    style.subspec 'IMXColor' do |color|
      color.source_files  = 'IMXUIsCpt/Utils/IMXStyleKit/IMXColor/*.{h,m}'
      color.public_header_files = [
        'IMXUIsCpt/Utils/IMXStyleKit/IMXColor/*.{h}'
      ]
    end
    style.subspec 'IMXFont' do |font|
      font.source_files  = 'IMXUIsCpt/Utils/IMXStyleKit/IMXFont/*.{h,m}'
      font.public_header_files = [
        'IMXUIsCpt/Utils/IMXStyleKit/IMXFont/*.{h}'
      ]
      font.compiler_flags = '-Wunguarded-availability'
    end
    style.subspec 'IMXIconfont' do |icon|
      icon.source_files  = 'IMXUIsCpt/Utils/IMXStyleKit/IMXIconfont/*.{h,m}'
      icon.public_header_files = [
        'IMXUIsCpt/Utils/IMXStyleKit/IMXIconfont/*.{h}'
      ]
      icon.frameworks = 'CoreText'
    end
  end

# IMXTips Cpt
  s.subspec 'IMXTips' do |tips|
    tips.source_files  = 'IMXUIsCpt/Libs/2nd/IMXTips/*.{h,m}'
    tips.public_header_files = [
      'IMXUIsCpt/Libs/2nd/IMXTips/*.{h}'
    ]
    tips.dependency 'MBProgressHUD' ,'1.1.0'
    tips.dependency 'IMXUIsCpt/IMXUIKitExt'
    tips.dependency 'IMXUIsCpt/IMXStyleKit'

    tips.compiler_flags = '-Wstrict-prototypes'
  end


# IMXDeviceInfo Cpt
  s.subspec 'IMXDeviceInfo' do |dinfo|
    dinfo.source_files  = 'IMXUIsCpt/Libs/2nd/IMXDeviceInfo/*.{h,m}'
    dinfo.public_header_files = [
      'IMXUIsCpt/Libs/2nd/IMXDeviceInfo/*.{h}'
    ]
  end

# IMXTabBarKit Cpt
  s.subspec 'IMXTabBarKit' do |tabkit|
    tabkit.source_files  = 'IMXUIsCpt/Cpts/IMXTabBarKit/*.{h,m}'
    tabkit.public_header_files = [
      'IMXUIsCpt/Cpts/IMXTabBarKit/*.{h}'
    ]
    tabkit.dependency 'Masonry' ,'~> 1.1.0'
  end

# IMXListView Cpt
  s.subspec 'IMXListView' do |list|
    list.source_files  = 'IMXUIsCpt/Cpts/IMXListView/*.{h,m}'
    list.public_header_files = [
     'IMXUIsCpt/Cpts/IMXListView/*.{h}'
    ]
    list.dependency 'MJRefresh' ,'~> 3.1.15.1'

    list.dependency 'Masonry' ,'~> 1.1.0'

    list.subspec 'IMXReuseUIs' do |reuse|
    reuse.source_files  = 'IMXUIsCpt/Cpts/IMXListView/IMXReuseUIs/*.{h,m}'
    reuse.public_header_files = [
      'IMXUIsCpt/Cpts/IMXListView/IMXReuseUIs/*.{h}'
    ]
    reuse.dependency 'IMXUIsCpt/IMXUIs'
    end
    list.subspec 'Layout' do |layout|
    layout.source_files  = 'IMXUIsCpt/Cpts/IMXListView/Layout/*.{h,m}'
    layout.public_header_files = [
    'IMXUIsCpt/Cpts/IMXListView/Layout/*.{h}'
    ]
    end
  end
# IMXSegmentKit Cpt
  s.subspec 'IMXSegmentKit' do |skit|
  skit.source_files  = 'IMXUIsCpt/Cpts/IMXSegmentKit/*.{h,m}'
  skit.public_header_files = [
    'IMXUIsCpt/Cpts/IMXSegmentKit/*.{h}'
  ]
  skit.dependency 'IMXFuncCpt/IMXObjectExt','~> 1.1.0' ##私有库引用
  skit.dependency 'IMXUIsCpt/IMXUIKitExt'
  skit.dependency 'Masonry' ,'~> 1.1.0'

end
# IMXSafeAreaKit Cpt
  s.subspec 'IMXSafeAreaKit' do |safe|
  safe.source_files  = 'IMXUIsCpt/Utils/IMXSafeAreaKit/*.{h,m}'
  safe.public_header_files = [
    'IMXUIsCpt/Utils/IMXSafeAreaKit/*.{h}'
  ]
  safe.dependency 'IMXUIsCpt/IMXUIKitExt'

end

# IMXUIs Cpt
  s.subspec 'IMXUIs' do |uis|
    uis.source_files  = 'IMXUIsCpt/Libs/2nd/IMXUIs/*.{h,m}'
    uis.public_header_files = [
      'IMXUIsCpt/Libs/2nd/IMXUIs/*.{h}'
    ]
    uis.dependency 'Masonry' ,'~> 1.1.0'
    uis.dependency 'IMXFuncCpt/IMXObjectExt','~> 1.1.0' ##私有库引用
    uis.dependency 'IMXUIsCpt/IMXStyleKit'
  end
end
