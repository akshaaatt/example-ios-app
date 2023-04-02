//
//  ElementView.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ElementView: View {
    let element: APIData
    
    var body: some View {
        VStack {
            HStack {
                Text(element.id.formatted())
                Spacer()
                Text(element.albumId.formatted())
            }

            WebImage(url: URL(string: element.thumbnailUrl))
                .frame(width: 150, height: 150)
            Text(element.title)
        }
        .onTapGesture {
            guard let url = URL(string: element.url) else { return }
            UIApplication.shared.open(url)
        }
    }
}

struct ElementView_Previews: PreviewProvider {
    static var previews: some View {
        ElementView(element: APIData())
    }
}
