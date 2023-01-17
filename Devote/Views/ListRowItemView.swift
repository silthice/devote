//
//  ListRowItemView.swift
//  Devote
//
//  Created by Giap on 17/01/2023.
//

import SwiftUI

struct ListRowItemView: View {
    //MARK: - PROPERTIES
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    //MARK: - BODY
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink: Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
        } //: End of Toggle
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}
//MARK: - PREVIEW
//struct ListRowItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListRowItemView()
//    }
//}
