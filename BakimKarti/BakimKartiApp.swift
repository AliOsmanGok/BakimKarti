//
//  BakimKartiApp.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//

import SwiftUI

@main
struct BakimKartiApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                UserList()
            }
        }
        .modelContainer(for: [User.self])
    }
}
