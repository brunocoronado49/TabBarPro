//
//  TabIcon.swift
//  TabBarPro
//
//  Created by Bruno Coronado on 01/10/21.
//

import SwiftUI

struct TabIcon: View {
    let sizeOfIcon: CGFloat = 18
    let viewRoutes: TabBarRoutes
    @ObservedObject var routes: ViewRoutes
    
    var body: some View {
        Button(action: {
            routes.currentView = viewRoutes
        }) {
            Image(systemName: viewRoutes.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: sizeOfIcon, height: sizeOfIcon)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
        }
    }
}
