//
//  GroupsCellPrototypeView.swift
//  VK_Application_SwiftUI
//
//  Created by Сергей Чумовских  on 16.01.2022.
//

import SwiftUI

struct GroupsCellPrototypeView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("funim")
                .frame(width: 100, height: 100, alignment: .center)
                .modifier(CircleImageShadow(shadowRadius: 4))
            VStack(alignment: .leading, spacing: 8) {
                Text("Funimation Group")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                Text("Funimation Global Group, LLC — американская компания, которая занимается выпуском, рекламой, продажей аниме, манги и других развлекательных товаров в США и в мире. Она была основана в 1994 году бизнесменом Гэном Фукунагой и вошла в состав Navarre Corporation 11 мая 2005 года")
                    .font(.system(size: 13))
                    .fontWeight(.light)
                    .lineLimit(4)
                    .padding(.trailing)
            }
        }
    }
}

struct GroupsCellPrototypeView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsCellPrototypeView()
    }
}
