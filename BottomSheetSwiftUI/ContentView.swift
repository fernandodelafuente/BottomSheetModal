//
//  ContentView.swift
//  BottomSheetSwiftUI
//
//  Created by Fernando de la Fuente on 10/14/19.
//  Copyright © 2019 Fernando de la Fuente. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var showBottomSheet = false

  var body: some View {
    ZStack {
      Button(action: {
        withAnimation {
          self.showBottomSheet.toggle()
        }
      }) {
        Text("Show modal")
          .font(.title)
          .bold()
          .foregroundColor(.black)
      }

      BottomSheetModal(display: $showBottomSheet) {
        Text("Show your content")
          .font(Font.system(.headline))
          .foregroundColor(Color.black)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
