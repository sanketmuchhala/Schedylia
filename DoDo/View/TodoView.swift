//
//  TodoView.swift
//  ToDo
//
//  Created by Sanket Muchhala on 08.06.2023.
//  Copyright © 2023 Sanket Muchhala. All rights reserved.
//

import SwiftUI

struct TodoView: View {
    
    // Connection to the ViewModel (Todo)
    @EnvironmentObject var todo: Todo
    
    
    // UI content and layout
    // ---------------------
    
    var body: some View {
        NavigationView {
            ZStack {
                ListView()
                    .navigationBarTitle("Todo")
                
                NewItemButton()

            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView().environmentObject(Todo())
    }
}
