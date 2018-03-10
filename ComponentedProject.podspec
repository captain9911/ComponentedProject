
Pod::Spec.new do |s|
  s.name         = "ComponentedProject"
  s.version      = "0.0.1"
  s.summary      = "Componented Project"
  s.description  = <<-DESC
                    Componentized project management.
                   DESC
  s.homepage     = "https://github.com/captain9911/ComponentedProject.git"
  s.license      = "MIT"
  s.author             = { "captain9911" => "captain9911@163.com" }
  s.platform     = :ios, "9.0"
  s.requires_arc = true  
  s.source       = { :git => "https://github.com/captain9911/ComponentedProject.git", :tag => "#{s.version}" }

  s.subspec 'base' do |base|
    base.source_files = 'ComponentedProject/BaseModule/**/*.{h,m}'
    base.dependency 'Masonry', '~>1.1.0'
  end

  s.subspec 'red' do |red|
    red.source_files = 'ComponentedProject/RedModule/**/*.{h,m}'
    red.dependency 'ComponentedProject/base'
    red.dependency 'ComponentedProject/green'
  end

  s.subspec 'green' do |green|
    green.source_files = 'ComponentedProject/GreenModule/**/*.{h,m}'
    green.dependency 'ComponentedProject/base'
    green.dependency 'SDWebImage', '~>4.3.2'
  end

  s.subspec 'blue' do |blue|
    blue.source_files = 'ComponentedProject/BlueModule/**/*.{h,m}'
    blue.dependency 'ComponentedProject/base'
  end

end
