//
//  SettingsView.swift
//  Finance Me
//
//  Created by Joel Prebish on 9/3/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var notificationEnabled = true
    @State private var soundEnabled = true
    @State private var volume: Double = 50
    @State private var darkModeEnabled = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account")) {
                    NavigationLink(destination: AccountDetailsView()) {
                        Text("Account Details")
                    }
                    NavigationLink(destination: PrivacySettingsView()) {
                        Text("Privacy Settings")
                    }
                }
                
                Section(header: Text("Notifications")) {
                    Toggle(isOn: $notificationEnabled) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $soundEnabled) {
                        Text("Enable Sound")
                    }
                    Slider(value: $volume, in: 0...100) {
                        Text("Volume")
                    }
                }
                
                Section(header: Text("Appearance")) {
                    Toggle(isOn: $darkModeEnabled) {
                        Text("Dark Mode")
                    }
                }
                
                Section {
                    Button(action: {
                        print("Log out pressed")
                    }) {
                        Text("Log out").foregroundColor(.red)
                    }
                }
                
            }
            .navigationTitle("Settings")
        }
    }
    
}
struct AccountDetailsView: View {
    var body: some View {
        Text("Account Details go here")
            .navigationTitle("Account Details")
    }
}

struct PrivacySettingsView: View {
    var body: some View {
        Text("Privacy Details go here")
            .navigationTitle("Privacy Settings")
    }
}

#Preview {
    SettingsView()
}


