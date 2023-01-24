//
//  ContentView.swift
//  Bolshoi Search
//
//  Created by Николай Ногин on 23.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var perfName: String = ""
    var performances: [Performance] = Performance.all()
    var body: some View {

        VStack {
            TextField("Начните вводить название", text: $perfName)
                .padding(.horizontal, 30)
                .padding(.vertical,10)
                .background(Color.white)
                .cornerRadius(10)
                .fixedSize()

            Divider().padding(.bottom, 20)
            
            VStack(spacing: 4) {
                if performances.count == 0 {
                    Text("Начните поиск...")
                } else {
                    ForEach(performances, id: \.self) { perf in
                        Text("\(perf.name)")
                            .padding(.horizontal, 10)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color("ListItemColor"))
                            .cornerRadius(12)
                            
                    }.padding(.horizontal, 5)
                }
                
            }
            Spacer()
        }.background(Image("backgr").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
