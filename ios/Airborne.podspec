#
# Test-only override for the Airborne pod.
# Consumer Podfile should reference this via:
#   pod 'Airborne', :podspec => 'https://raw.githubusercontent.com/PraveenGongada/airborne/test-artifacts/ios/Airborne.podspec'
#
# Version is pinned to 0.30.1 to match `s.dependency "Airborne", "0.30.1"`
# in airborne-react-native's AirborneReact.podspec. CocoaPods will reject a mismatch.
#
Pod::Spec.new do |s|
  s.name             = 'Airborne'
  s.version          = '0.30.1'
  s.summary          = 'Airborne OTA (fork test build)'
  s.description      = 'Test-only xcframework built from PraveenGongada/airborne fork. Do not use in production.'
  s.homepage         = 'https://github.com/PraveenGongada/airborne'
  s.license          = { :type => 'Apache 2.0' }
  s.author           = { 'test' => 'test@example.com' }

  s.source           = {
    :http => 'https://github.com/PraveenGongada/airborne/raw/test-artifacts/ios/Airborne.xcframework.zip'
  }

  s.ios.vendored_frameworks = 'Airborne.xcframework'
  s.platform                = :ios, '12.0'
end
