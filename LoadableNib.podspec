Pod::Spec.new do |s|

  s.name         = "LoadableNib"
  s.version      = "0.0.1"
  s.summary      = "`LoadableNib` helps you load views from xib file in a type-safe way."

  s.description  = <<-DESC
                   `LoadableNib` helps you load views from xib file in a type-safe way.
                   You'll be able to resue UIView's subclass with simple code, 
                   no matter the class is the view's `Custom Class` or `File's Owner`. 
                   DESC

  s.homepage     = "https://github.com/Ckitakishi/LoadableNib"

  s.license      = "MIT"

  s.author             = { "Ckitakishi" => "me@ckitakishi.com" }
  s.social_media_url   = "https://github.com/Ckitakishi"

  s.ios.deployment_target = "9.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/Ckitakishi/LoadableNib.git", :tag => "s.version" }

  s.source_files  = "Sources/"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
