//
//  EggsCounterView.swift
//  FunnyEggs
//
//  Created by Ульяна Гритчина on 30.05.2022.
//

import SwiftUI

struct EggsCounterView: View {
    @Binding var eggs: Int
    let action: () -> ()
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        VStack {
            Button(action: {action()}) {
                Text("\(eggs)")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: height / 25))
                    .frame(width: width / 2, height: height / 16)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(.top, height / 25)
    }
}
struct EggsCounterView_Previews: PreviewProvider {
    static var previews: some View {
        EggsCounterView(eggs: .constant(0), action: {})
    }
}
