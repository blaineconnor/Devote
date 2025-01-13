//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by Fatih Emre on 7.01.2025.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetControl()
        DevoteWidgetLiveActivity()
    }
}
