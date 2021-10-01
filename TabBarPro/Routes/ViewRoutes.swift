//
//  ViewRoutes.swift
//  TabBarPro
//
//  Created by Bruno Coronado on 01/10/21.
//

import Foundation
import SwiftUI

enum TabBarRoutes: Int, CaseIterable {
    case home
    case search
    case notifications
    case profile
    
    var imageName: String {
        switch self {
        case .home: return "house"
        case .search: return "magnifyingglass"
        case .notifications: return "bell"
        case .profile: return "person"
        }
    }
    
    var view: some View {
        switch self {
        case .home: return Text("Home")
        case .search: return Text("Search")
        case .notifications: return Text("Notifications")
        case .profile: return Text("Profile")
        }
    }
}

class ViewRoutes: ObservableObject {
    @Published var currentView: TabBarRoutes = .home
    
    var view: some View { return currentView.view }
}
