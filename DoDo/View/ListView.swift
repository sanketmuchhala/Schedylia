//
//  ListView.swift
//  TodoProj
//
//  Created by Sanket Muchhala on 08.06.2023.
//  Copyright © 2023 Sanket Muchhala. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    // Connection to the ViewModel (Todo)
    @EnvironmentObject var todo: Todo
    
    // UI content and layout
    // ---------------------
    
    var body: some View {
        List{
            ForEach(self.todo.items.sorted(by: { $0.colorName < $1.colorName})) { item in
                RowView(itemId: item.id)
            }
        }
        .animation(.default)
        .onAppear() {
            UITableView.appearance().separatorColor = .clear
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(Todo())
    }
}
