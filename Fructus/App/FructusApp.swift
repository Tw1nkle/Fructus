//
//  FructusApp.swift
//  Fructus
//
//  Created by Дарья Федяшова on 18.02.2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
