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
    
    let transaction = Transaction(name: "", vendor: "", amount: 0, date: Date(), location: "", category: PurchaseCategory.defaultCategory)
    
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
                }
            }
            
            Spacer()
            TransactionView(transaction: transaction)
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
    
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -27.491242943912567, longitude: 153.0883900378484), latitudinalMeters: 1000, longitudinalMeters: 1000))

    var body: some View {
        
        VStack {
            Map(position: $cameraPosition)
                .frame(minHeight: 150)
                .cornerRadius(10)
                .padding(.vertical, 10)
            
            Button("Pick custom location", action: {print("Hello")})
        }
        .padding(.vertical)

    }
}

#Preview {
    AddPurchase()
}
