//
//  FlashMathApp.swift
//  FlashMath
//
//  Created by Julia Gurbanova on 20.11.2023.
//

import SwiftUI

@main
struct FlashMathApp: App {
    @State private var viewModel = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environment(viewModel)
        }
    }
}
