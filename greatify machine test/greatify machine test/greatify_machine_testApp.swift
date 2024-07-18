//
//  greatify_machine_testApp.swift
//  greatify machine test
//
//  Created by Apple on 16/07/24.
//

import SwiftUI

@main
struct greatify_machine_testApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
          Login_Page_View()
        }
    }
}
