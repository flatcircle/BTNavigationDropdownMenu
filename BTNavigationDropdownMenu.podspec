Pod::Spec.new do |s|
  s.name         = "BTNavigationDropdownMenu"
  s.version      = "0.4.6"
  s.summary      = "The elegent navigation dropdown menu"
  s.description  = <<-DESC
                   The elegant **dropdown menu**, written in **Swift**, appears underneath **navigation bar** to display a list of related items when a user click on the navigation title.
                   DESC
  s.homepage     = "https://github.com/PhamBaTho/BTNavigationDropdownMenu"
  s.screenshots  = "https://raw.githubusercontent.com/PhamBaTho/BTNavigationDropdownMenu/master/Assets/Demo.png"
  s.license      = "MIT"
  s.author             = { "Pham Ba Tho" => "phambatho@gmail.com" }
  s.social_media_url   = "https://www.facebook.com/phambatho"
  s.platform     = :ios, '9.3'
  s.source       = { :git => 'git@github.com:flatcircle/BTNavigationDropdownMenu.git' }
  s.source_files  = "Source/**/*.swift"
  s.resources = "Source/*.bundle"
  s.requires_arc = true
end
