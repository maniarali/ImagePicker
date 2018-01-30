#
# Be sure to run `pod lib lint ImagePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ImagePicker'
  s.version          = '0.1.0'
  s.summary          = 'This is is simple solution for all those who are tired of copy pasting image picker in each files to pick Image. This pods simple returns you the picked Image.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: This is is simple solution for all those who are tired of copy pasting image picker in each files to pick Image. This pods simple returns you the picked Image

                       DESC

  s.homepage         = 'https://github.com/maniarali/ImagePicker.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MA Maniar' => 'maniarali@gmail.com' }
  s.source           = { :git => 'https://github.com/maniarali/ImagePicker.git', :tag => 0.1 }
  # s.social_media_url = 'https://twitter.com/maniarali'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ImagePicker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ImagePicker' => ['ImagePicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
