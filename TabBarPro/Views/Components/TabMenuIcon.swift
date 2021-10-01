//
//  TabMenuIcon.swift
//  TabBarPro
//
//  Created by Bruno Coronado on 01/10/21.
//

import SwiftUI

struct TabMenuIcon: View {
    let sizeCircle: CGFloat = 50
    let sizeIcon: CGFloat = 50
    
    @Binding var showMenu: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: sizeCircle, height: sizeCircle)
                .shadow(radius: 5)
            
            Image(systemName: showMenu ? "xmark.circle.fill" : "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: sizeIcon, height: sizeIcon)
                .foregroundColor(
                    showMenu ? Color(hex: 0xff4757) : Color(hex: 0x45aaf2)
                )
                .rotationEffect(Angle(degrees: showMenu ? 90 : 0))
        }
        .offset(y: -50)
    }
}

struct TabMenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabMenuIcon(showMenu: .constant(true))
    }
}
