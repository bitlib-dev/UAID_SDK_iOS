#
# Be sure to run `pod lib lint UAID.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UAID'
  s.version          = '0.2.2'
  s.summary          = '通过运营商获取设备/用户唯一标识'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/bitlib-dev/UAID_SDK_iOS.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bitlib' => 'support@bitlib.cc' }
  s.source           = { :git => 'https://github.com/bitlib-dev/UAID_SDK_iOS.git', :tag => s.version }
  
  s.vendored_frameworks = 'Lib/UAID.framework'

  s.ios.deployment_target = '9.0'
  
  s.pod_target_xcconfig = {
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.frameworks = 'CoreTelephony', 'CFNetwork','SystemConfiguration'
  
end
