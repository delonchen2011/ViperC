platform :ios, '9.0'

target 'Sample' do
  use_frameworks!

  target 'SampleTests' do
    inherit! :search_paths
    pod 'OCMock', '~> 3.4'
  	pod 'Expecta', '~> 1.0.5'
  	pod 'Quick', '~> 1.1.0'
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
