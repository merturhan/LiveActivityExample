//
//  HomeViewModel.swift
//  LiveActivityExample
//
//  Created by Mert Urhan on 8.09.2024.
//

import Foundation

protocol HomeViewModelBusinessLogic: ObservableObject {
    func startLiveActivity()
    func stopLiveActivity()
}

final class HomeViewModel: ObservableObject {
    // MARK: Properties
    
}

extension HomeViewModel: HomeViewModelBusinessLogic {
    func startLiveActivity() {
        
    }
    
    func stopLiveActivity() {
        
    }
}
