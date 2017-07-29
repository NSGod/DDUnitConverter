Pod::Spec.new do |s|
  s.name         = "DDUnitConverter"
  s.version      = "1.0.2"
  s.summary      = "A simple library for converting a value from one unit to another."
  s.homepage     = "https://github.com/anomaly2104/DDUnitConverter"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Udit Agarwal" => "hello@uditagarwal.com" }
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.6'
  s.source       = { :git => "https://github.com/anomaly2104/DDUnitConverter", :tag => "1.0.2" }
  s.source_files  = 'DDUnitConverter/**/*.{h,m}'
  s.requires_arc = false
end