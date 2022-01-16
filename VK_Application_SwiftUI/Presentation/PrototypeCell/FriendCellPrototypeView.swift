//
//  FriendCellPrototype.swift
//  VK_Application_SwiftUI
//
//  Created by Сергей Чумовских  on 16.01.2022.
//

import SwiftUI

struct FriendCellPrototypeView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("hinata")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .modifier(CircleImageShadow(shadowRadius: 4))
            VStack(alignment: .leading, spacing: 8) {
                Text("Hinata See")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                Text("Tokyo")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .shadow(color: .secondary, radius: 1)
                Text("online")
                    .font(.system(size: 13))
                    .fontWeight(.light)
                    .shadow(color: .secondary, radius: 1)
            }
        }
    }
}

struct FriendCellPrototypeView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCellPrototypeView()
    }
}
