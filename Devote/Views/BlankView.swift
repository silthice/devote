//
//  BlankView.swift
//  Devote
//
//  Created by Giap on 17/01/2023.
//

import SwiftUI

struct BlankView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
        } //: End of VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}
//MARK: - PREVIEW
struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
