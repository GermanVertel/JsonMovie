//
//  HomeView.swift
//  JsonMovie
//
//  Created by German David Vertel Narvaez on 21/06/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search = ""
    @State private var buscar = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                VStack{
                    TextField("Search", text: $search)
                        .textFieldStyle(.roundedBorder)
                        .padding(.top, 125)
                        .padding(.bottom,5)
                        .padding()
                        .onAppear{
                            search = ""
                        }
                        
                    Button(action: {
                        buscar.toggle()
                    }, label: {
                        Text("Search")
                            .font(.title2)
                            .bold()
                    })
                    .buttonStyle(.bordered)
                    .tint(.white)
                    Spacer()
                    
                    .navigationDestination(isPresented: $buscar){
                        MovieView(movie: search)
                    }
                }
                .padding(.all)
                .navigationTitle("App movie Search")
                
                 
            }.ignoresSafeArea(.all)
               
        }
    }
}

#Preview {
    HomeView()
}
