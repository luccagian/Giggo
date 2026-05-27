//
//  HomeView.swift
//  Projeto
//
//  Created by Aluno Mack on 25/05/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                Rectangle()
                    .frame(width: 100, height: 5600)
            }
            .navigationTitle("Olá, xxx!")
            .toolbar(content: {
                Button(action: {
                    
                }) {
                    Image(systemName: "bell")
                }
            })
            
            
        }
    }
}

#Preview {
    HomeView()
}
