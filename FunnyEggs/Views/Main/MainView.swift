//
//  ContentView.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 28.05.2022.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewViewModel()
    var body: some View {
        ZStack {
            
            if vm.mainScene == .eggsRain {
                SceneView(scene: vm.eggsRain)
            } else {
                SceneView(scene: vm.bigEggs).onTapGesture { vm.addEgg() }
            }
            
            EggsCounterView(eggs: $vm.eggs, action: {vm.toglleIsShowingSettings()})
            
            SettingsView(vm: vm, mainScene: $vm.mainScene)
                .opacity(vm.isShowingSettings ? 1 : 0)
                .animation(.default, value: vm.isShowingSettings)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


