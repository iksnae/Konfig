Pod::Spec.new do |s|
  s.name         = "Konfig"
  s.version      = "1.0.0"
  s.summary      = "JSON based remote configuration for iOS apps"
  s.description  = <<-DESC 

Inspired by Matt Thompson's [GroundControl](https://github.com/mattt/GroundControl), Konfig provides a JSON based alternative for remote configuration of iOS apps

                   DESC
  s.homepage     = "https://github.com/iksnae/Konfig"
  # s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = 'MIT'
  s.author       = { "Khalid Mills" => "mustkre8@gmail.com" }
  s.source       = { :git => "https://github.com/iksnae/Konfig.git", :tag => s.version.to_s }

  # s.platform     = :ios, '6.0'
  # s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets'

  # s.public_header_files = 'Classes/**/*.h'
 
end
