//
//  FinanceView.swift
//  Finance Me
//
//  Created by Joel Prebish on 9/3/24.
//

import SwiftUI

struct FinanceView: View {

    // States of things
    // this is just filler comments

    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Accounts")) {
                    NavigationLink(destination: AccountDetailView()) {
                        Text("Account 1")
                    }
                    NavigationLink(destination: AccountDetailView()) {
                        Text("Account 2")
                    }
                    NavigationLink(destination: AccountDetailView()) {
                        Text("Account 3")
                    }
                }
                Section(header: Text("Savings")) {
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Savings 1")
                    }
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Savings 2")
                    }
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Savings 3")
                    }
                }
                Section(header: Text("Subscriptions")) {
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Subscription 1")
                    }
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Subscription 2")
                    }
                    NavigationLink(destination: SavingsDetailView()) {
                        Text("Subscription 3")
                    
                    }

                }
            }
        }
        .navigationTitle("Finance")
    }
}

#Preview {
    FinanceView()
}
