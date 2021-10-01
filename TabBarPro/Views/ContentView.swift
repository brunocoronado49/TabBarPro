//
//  ContentView.swift
//  TabBarPro
//
//  Created by Bruno Coronado on 01/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @ObservedObject var routes = ViewRoutes()
    
    var body: some View {
        VStack {
            Spacer()
            
            routes.view
            
            Spacer()
            
            HStack {
                TabIcon(viewRoutes: .home, routes: routes)
                TabIcon(viewRoutes: .search, routes: routes)
                
                TabMenuIcon(showMenu: $showMenu)
                    .onTapGesture {
                        withAnimation {
                             showMenu.toggle()
                        }
                    }
                
                TabIcon(viewRoutes: .notifications, routes: routes)
                TabIcon(viewRoutes: .profile, routes: routes)
            }
            .frame(height: UIScreen.main.bounds.height / 8)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray4))
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
