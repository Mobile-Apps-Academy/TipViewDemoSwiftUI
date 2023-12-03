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

struct ContentView: View {
    
    private let favTip = FavoriteTip()
    
    var body: some View {
        ZStack {
            Color("Yellow")
            VStack {
                Image("temp")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .overlay(alignment: .bottomTrailing) {
                        
                        Image(systemName: "heart")
                            .font(.system(size: 24))
                            .foregroundStyle(.red)
                            .padding()
                            .popoverTip(favTip, arrowEdge: .bottom)
                        
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 60)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}


struct FavoriteTip: Tip {
    var title: Text {
        Text("Save the photo as favorite")
    }
    
    var message: Text? {
        Text("Your favorite photos will appear in the favorite folder")
    }
    
    var image: Image? {
        Image(systemName: "heart")
    }
}
