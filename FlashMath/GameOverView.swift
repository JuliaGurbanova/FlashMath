//
//  GameOverView.swift
//  FlashMath
//
//  Created by Julia Gurbanova on 21.11.2023.
//

import SwiftUI

struct GameOverView: View {
    @Environment(ViewModel.self) private var viewModel

    var body: some View {
        VStack {
            Text("Game over!")
                .titleStyle()
            Text("You scored: \(viewModel.questionNumber - 1).")
                .subtitleStyle()
            Button("Play Again", action: viewModel.end)
                .buttonStyle(.primary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    GameOverView()
                .environment(ViewModel())
}
