#
# Be sure to run `pod lib lint GeoJSON.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GeoJSON"
  s.version          = "0.1.0"
  s.summary          = "Class for processing GeoJSON data"
  s.description      = <<-DESC
                       Class for processing GeoJSON data

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/wayneohmer/GeoJSON"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Wayne Ohmer" => "wayneohmer@gmail.com" }
  s.source           = { :git => "https://github.com/wayneohmer/GeoJSON.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'GeoJSON/*.swift'
  #s.resource_bundles = {
  #  'GeoJSON' => ['Pod/Assets/*.png']
  #}

   s.public_header_files = 'GeoJSON/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
