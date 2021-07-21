//
//  SwiftUIView.swift
//  
//
//  Created by 변경민 on 2021/05/25.
//

import SwiftUI

public struct Segment: View {
    @Binding var num: Int
    var width: CGFloat = 50
    var color: Color = .red
    @State var segment: [Bool] = [ false, false, false, false, false, false, false ]
    var spaceMod: CGFloat = 0.05
    public var body: some View {
        ZStack {
            RoundSquare().fill(Color.green.opacity(segment[3] ? 1 : 0.3))
                .frame(width: width, height: width*0.25) // 4
            
            RoundSquare().fill(Color.green.opacity(segment[1] ? 1 : 0.3))
                .frame(width: width*0.25, height: width*0.75-width*spaceMod*2)
                .offset(x: -width*0.375, y: -width*0.5) // 2
            
            RoundSquare().fill(Color.green.opacity(segment[4] ? 1 : 0.3))
                .frame(width: width*0.25, height: width*0.75-width*spaceMod*2)
                .offset(x: -width*0.375, y: width*0.5) // 5
            
            RoundSquare(topRight: width).fill(Color.green.opacity(segment[2] ? 1 : 0.3))
                .frame(width: width*0.25, height: width-width*spaceMod)
                .offset(x: width*0.375, y: -width*0.625-width*spaceMod*0.5) // 3
            
            RoundSquare(bottomRight: width).fill(Color.green.opacity(segment[5] ? 1 : 0.3))
                .frame(width: width*0.25, height: width-width*spaceMod)
                .offset(x: width*0.375, y: width*0.625+width*0.025) // 6
            
            RoundSquare(topLeft: width).fill(Color.green.opacity(segment[0] ? 1 : 0.3))
                .frame(width: width*0.75-width*spaceMod*0.5, height: width*0.25)
                .offset(x: -width*0.125-width*spaceMod*0.5, y: -width) // 1
            
            RoundSquare(bottomLeft: width).fill(Color.green.opacity(segment[6] ? 1 : 0.3))
                .frame(width: width*0.75-width*spaceMod*0.5, height: width*0.25)
                .offset(x: -width*0.125-width*spaceMod*0.5, y: width) // 7

        }.frame(width: width, height: width*2.25)
        .onChange(of: num, perform: { value in
            update()
        })
    }
    
    private func update() {
        switch num {
        case 0:
            self.segment = [true, true, true, false, true, true, true]
        case 1:
            self.segment = [false, false, true, false, false, true, false]
        case 2:
            self.segment = [true, false, true, true, true, false, true]
        case 3:
            self.segment = [true, false, true, true, false, true, true]
        case 4:
            self.segment = [false, true, true, true, false, true, false]
        case 5:
            self.segment = [true, true, false, true, false, true, true]
        case 6:
            self.segment = [true, true, false, true, true, true, true]
        case 7:
            self.segment = [true, true, true, false, false, true, false]
        case 8:
            self.segment = [true, true, true, true, true, true, true]
        case 9:
            self.segment = [true, true, true, true, false, true, false]
        default:
            self.segment = [false, false, false, false, false, false, false]
        }
    }
    public init(num: Binding<Int>) {
        self._num = num
    }
}
