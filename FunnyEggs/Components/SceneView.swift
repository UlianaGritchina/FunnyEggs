//
//  SceneView.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 30.05.2022.
//

import SwiftUI
import SpriteKit

struct SceneView: View {
    let scene: SKScene
    var body: some View {
        SpriteView(scene: scene)
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height)
            .ignoresSafeArea()
    }
}

struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView(scene: SKScene(size: CGSize(width: 100, height: 100)))
    }
}
