//
//  AddPurchase.swift
//  Geld
//
//  Created by Logan Janssen on 7/7/2024.
//

import SwiftUI
import MapKit

struct AddPurchase: View {
    
    enum Reoccurence: Codable {
        case daily, weekDaily, weekly, fortnightly, monthly, yearly, none
    }
    
    @State private var reocurrence: Reoccurence = .daily
    
    var body: some View {
        VStack (alignment: .leading) {
            GroupBox {
                TransactionView(purchaseCategoryColour: .yellow, title: "Purchase", amount: 0, time: "5:57pm", locationName: "Home")
                    .frame(height: 70)
            }
            .padding()
            
            Form {
                Section (header: Text("Purchase Information")) {
                    HStack {
                        Text("Name")
                        .font(.headline)
                        Spacer()
                        TextField("Purchase Name", text: .constant(""))
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Amount")
                        .font(.headline)
                        Spacer()
                        TextField("Amount", text: .constant(""))
                            .multilineTextAlignment(.trailing)
                    }
                }
                Section (header: Text("Time")) {
                    DatePicker("Date", selection: .constant(Date()), displayedComponents: .date)
                        .font(.headline)
                    DatePicker("Time", selection: .constant(Date()), displayedComponents: .hourAndMinute)
                        .font(.headline)
                    List {
                        Picker("Reocurrence", selection: $reocurrence) {
                            Text("Daily").tag(Reoccurence.daily)
                            Text("Week Days").tag(Reoccurence.weekDaily)
                            Text("Weekly").tag(Reoccurence.weekly)
                            Text("Fortnightly").tag(Reoccurence.fortnightly)
                            Text("Monthly").tag(Reoccurence.monthly)
                            Text("Annually").tag(Reoccurence.yearly)
                            Text("None").tag(Reoccurence.none)
                        }
                    }

                    Label("This time and date is in the future", systemImage: "clock.badge.fill")
                    Label("This purchase will be deducted from this account every day", systemImage: "clock.fill")

                }
                Section (header: Text("Location")) {
                    MapPreview()
                    Button("Pick custom location", action: {print("Hello")})
                }
            }
            
            Spacer()
            Button(action: {print("Hello")} ) {
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .cornerRadius(20)
                    Text("Add Purchase")
                        .font(.title3)
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
            }
            .frame(maxHeight: 90)
            
        }
    }
}

struct MapPreview: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .frame(height: 150) // Adjust the height as needed
            .cornerRadius(10) // Optional: Add corner radius for rounded edges
    }
}

#Preview {
    AddPurchase()
}
