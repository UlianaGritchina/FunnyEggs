//
//  MainViewViewModel.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 30.05.2022.
//

import Foundation
import SpriteKit

enum GameTapy {
    case bigEggs
    case eggsRain
}

class MainViewViewModel: ObservableObject {
    
    var eggsRain: SKScene {
        let scene = EggsRainScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: 600)
        scene.scaleMode = .fill
        return scene
    }
    
    var bigEggs: SKScene {
        let scene = BigEggsScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: 600)
        scene.scaleMode = .fill
        return scene
    }
    
    @Published var eggs = 0
    @Published var isShowingSettings = false
    @Published var mainScene: GameTapy = .eggsRain
    
    init() {
        chooseScene(game: .eggsRain)
    }
    
    func addEgg() {
        eggs += 1
    }
    
    func toglleIsShowingSettings() {
        isShowingSettings.toggle()
    }
    
    func chooseScene(game: GameTapy) {
        eggs = 0
        switch game {
        case .bigEggs: mainScene = .bigEggs
        case .eggsRain: mainScene = .eggsRain
        }
    }
    
}
