//
//  HomeView.swift
//  LiveActivityExample
//
//  Created by Mert Urhan on 8.09.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel = .init()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                
                // MARK: Start Live Activity
                Button(action: {
                    
                }, label: {
                    Text("Start Live Activity")
                        .font(.system(size: 18))
                        .bold()
                        .padding(12)
                })
                .buttonStyle(BorderedButtonStyle())
                .tint(.blue)
                
                
                // MARK: Stop Live Activity
                Button(action: {
                    
                }, label: {
                    Text("Start Live Activity")
                        .font(.system(size: 18))
                        .bold()
                        .padding(12)
                })
                .buttonStyle(BorderedButtonStyle())
                .tint(.red)
            }
            
            .navigationTitle("Live Activity")
        }
    }
}

#Preview {
    HomeView()
}
