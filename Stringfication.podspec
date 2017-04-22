#
# Be sure to run `pod lib lint YNDropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Stringfication'
  s.version          = '0.1.0'
  s.summary          = 'Get all your object to string!'

  s.description      = <<-DESC
                        Magic will be happened when you use Stringfication!
                        DESC

  s.homepage         = 'https://github.com/younatics/Stringfication'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Seungyoun Yi" => "younatics@gmail.com" }

  s.source           = { :git => 'https://github.com/younatics/Stringfication.git', :tag => s.version.to_s }
  s.source_files     = 'Stringfication/*.swift'

  s.ios.deployment_target = '8.0'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
