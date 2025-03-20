import UIKit
import BNBSdkApi

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var banubaClientToken: String = <#Place your token here#>"Qk5CIHWLeXgYzjfrlzEUew0CGjGVNgekHk1WDTjx7c5VJNzvWM5R1ymGDx7CrHg7i6DODtd5yADIRqjPNrhGja/q8OC1n4CiPoNbf2ttFifQwV5c4BYafg3C2IzQpJGqi5paFMzJUYgpf27rlIaCzB0j7cjwZFyrjlXtRoU0zXCrpv9bbYpznGlJ8JLTW4uE8XOy5F3llL4ukK+3QYcSA2yM9Ofkd9r/J13TKse8b2XDU+n91JVXcbdRosMB4OAecvnB/yZjoGm5qrIYwQzFZakFiPPeNyDPt18bE5GHxm4ONSfBQ6R2hAGgoaj+anA1PebTznh9Nj9PXF5Oly09159BpshLit0vDKAFNZl0i6j6m/pCL3nsH55adMPtSj5fhx4aFDfRheeG7CfSU9LhYEDiavHQNA3i/094BXD/umigdo2zoF+yejSH03xAjfpREfdw8ATm+eLDp8lpP1lO3RxzHcnd6NsDvE5B8Mo9YGYYoZcCLRXLO5IHgWj7HMcZHhrFIu68WMdF2sDzHRsKLBCjtznASkwpNkejboRzhBXS39tpuOBSHu3HElNA1dIXOffexPGCETsH+FQekoasmP1fDfca+IoNsDs+4N7rIeYXYI04u0UKO8Z2dYB5ugCmMaHW6NXhlPYkMphrFFYFwQ=="

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        BanubaSdkManager.initialize(
            // This is array of paths where to seach for resources. E.g. for effects
            resourcePath: [
                Bundle.main.bundlePath + "/effects",
                Bundle.main.bundlePath // also seacrh dirrectly in app bundle
            ],
            clientTokenString: banubaClientToken
        )
        return true
    }
}

