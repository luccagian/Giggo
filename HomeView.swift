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
            Rectangle()
                .frame(width: 100, height: 100)
            
            
            
            .navigationTitle("Olá")
            Button(action: {
                
            }) {
                Image(systemName: "bell")
            }
            
        }
    }
}

#Preview {
    HomeView()
}
