//
//  AddPurchase.swift
//  Geld
//
//  Created by Logan Janssen on 7/7/2024.
//

import SwiftUI
import MapKit

struct AddPurchase: View {

    @State private var viewModel = AddPurchaseViewModel()
    
    var body: some View {
        VStack (alignment: .leading) {
            Form {
                Section (header: Text("Purchase Information")) {
                    HStack {
                        Text("Name")
                        .font(.headline)
                        Spacer()
                        TextField("Purchase Name", text: $viewModel.name)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Amount")
                        .font(.headline)
                        Spacer()
                        TextField("Amount", text: $viewModel.amount)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                    }
                }
                Section (header: Text("Time")) {
                    DatePicker("Date", selection: $viewModel.date, displayedComponents: .date)
                        .font(.headline)
                    DatePicker("Time", selection: $viewModel.date, displayedComponents: .hourAndMinute)
                        .font(.headline)
                    List {
                        Picker("Reocurrence", selection: $viewModel.reoccurance) {
                            Text("Daily").tag(Reoccurence.daily)
                            Text("Week Days").tag(Reoccurence.weekDaily)
                            Text("Weekly").tag(Reoccurence.weekly)
                            Text("Fortnightly").tag(Reoccurence.fortnightly)
                            Text("Monthly").tag(Reoccurence.monthly)
                            Text("Annually").tag(Reoccurence.yearly)
                            Text("None").tag(Reoccurence.none)
                        }
                    }

                    if (viewModel.isDateInFuture()) {
                        Label("This purchase will happen in the future", systemImage: "clock.badge.fill")
                    }

                }
                Section (header: Text("Location")) {
                    MapPreview()
                    Button("Pick custom location", action: {print("Hello")})
                }
            }
            
            Spacer()
            TransactionView(purchaseCategoryColour: .yellow, title: "Purchase", amount: 0, time: "5:57pm", locationName: "Home")
                .padding(.horizontal)
                .frame(height: 50)

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
