//
//  ViewExtensions.swift
//  BottomSheetSwiftUI
//
//  Created by Fernando de la Fuente on 10/14/19.
//  Copyright © 2019 Fernando de la Fuente. All rights reserved.
//

import SwiftUI

public extension View {
  func fillParent(alignment: Alignment = .center) -> some View {
    self
      .frame(
        minWidth: 0,
        maxWidth: .infinity,
        minHeight: 0,
        maxHeight: .infinity,
        alignment: alignment
    )
  }
}
