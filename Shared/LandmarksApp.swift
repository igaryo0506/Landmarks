//
//  LandmarksApp.swift
//  Shared
//
//  Created by 五十嵐諒 on 2022/06/10.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category:"LandmarkNear")
        #endif
    }
}
