platform :osx, '10.10'
use_frameworks!

def pods_for_errbody
	pod 'BuildaUtils', '0.0.11'
end

def also_xcode_pods
	pods_for_errbody
	pod 'XcodeServerSDK/ReactiveCocoa', :git => "git@github.com:czechboy0/XcodeServerSDK.git", :commit => "dbbf27438df705880d873f326067925ee131e5b1"
end

target 'Buildasaur' do
	also_xcode_pods
end

target 'BuildaKit' do
	also_xcode_pods
end

target 'BuildaKitTests' do
	also_xcode_pods
end

target 'BuildaGitServer' do
	pods_for_errbody
end

target 'BuildaGitServerTests' do
	pods_for_errbody
end



