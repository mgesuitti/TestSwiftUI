//
//  DetailView.swift
//  TestUI
//
//  Created by Mauro Gesuitti on 28/10/2019.
//  Copyright © 2019 Mauro Gesuitti. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @State private var totalClicked: Int = 0
    
    var body: some View {
        VStack {
            Text("Segunda Pantalla").font(.headline).fontWeight(.ultraLight)
            Spacer()
            Divider()
            Text("\(self.totalClicked)").font(.title).fontWeight(.bold).foregroundColor(Color.gray)
            Divider()
            Spacer()
            Button(action: {self.totalClicked = self.totalClicked + 1}) {
            Text("Aumentar valor")
            }.padding(.all)
        }.padding(.all, 40)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
