//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import SwiftUI
import TipKit

@main
struct TipViewDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                
                    try? Tips.resetDatastore()
                    try? Tips.configure([
                        .displayFrequency(.immediate), // You can specify any time to show the tip frequency
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
