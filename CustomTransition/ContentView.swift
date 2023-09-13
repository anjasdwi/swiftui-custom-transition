//
//  ContentView.swift
//  CustomTransition
//
//  Created by Engineer on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var namespace
    @State var show = false

    var body: some View {
        ZStack {

            if !show {
                ScrollView {
                    CourseItem(namespace: namespace, show: $show)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                show.toggle()
                            }
                        }
                }
            } else {
                CourseView(namespace: namespace, show: $show)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
