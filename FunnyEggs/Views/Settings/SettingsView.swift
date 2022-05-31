//
//  SettingsView.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 30.05.2022.
//

import SwiftUI

struct SettingsView: View {
    let vm: MainViewViewModel
    @Binding var mainScene: GameTapy
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        Rectangle()
            .frame(width: width / 1.5, height: height / 4)
            .opacity(0.5)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            .overlay(
                VStack {
                    
                    Button(action: {
                        vm.chooseScene(game: .eggsRain)
                        vm.toglleIsShowingSettings()
                    }) {
                        Text("Eggs Rain")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: height / 35))
                            .opacity(mainScene == .eggsRain ? 1 : 0.5)
                    }
                    .padding()
                    
                    Button(action: {
                        vm.chooseScene(game: .bigEggs)
                        vm.toglleIsShowingSettings()
                    }) {
                        Text("Big Eggs")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: height / 35))
                            .opacity(mainScene == .bigEggs ? 1 : 0.5)
                    }
                    
                }
                    .padding()
            )
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(vm: MainViewViewModel(), mainScene: .constant(.bigEggs))
    }
}
