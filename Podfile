# Uncomment the next line to define a global platform for your project
 #platform :ios, '12.0'
use_frameworks!

# workaround to avoid Xcode 10 caching of Pods that requires
# Product -> Clean Build Folder after new Cordova plugins installed
# Requires CocoaPods 1.6 or newer
install! 'cocoapods', :disable_input_output_paths => true

def capacitor_pods
  # Automatic Capacitor Pod dependencies, do not delete
   pod 'Capacitor', :path => 'node_modules/@capacitor/ios', :platforms => { :ios => '12.0' }
  pod 'CapacitorCordova', :path => 'node_modules/@capacitor/ios', :platforms => { :ios => '12.0' }
end

target 'downloadMicroAppsSwiftSDK' do
  
  capacitor_pods

end
