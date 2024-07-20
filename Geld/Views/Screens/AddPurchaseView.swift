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
    @State var transaction: Transaction = Transaction(name: "", vendor: "", amount: 0, date: Date(), location: "", category: PurchaseCategories.last!)
    @State var transactionAmount: String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Form {
                Section (header: Text("Purchase Information")) {
                    HStack {
                        Text("Name")
                        .font(.headline)
                        Spacer()
                        TextField("Purchase Name", text: $transaction.name)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Amount")
                        .font(.headline)
                        Spacer()
                        TextField("Amount", text: $transactionAmount)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                    }
                    Picker("Category", selection: $transaction.category) {
                        ForEach(PurchaseCategories) { category in
                            HStack {
                                Label(category.name, systemImage: category.symbol)
                            }.tag(category as Category?)
                        }
                    }
                }
                Section (header: Text("Time")) {
                    DatePicker("Date", selection: $transaction.date, displayedComponents: .date)
                        .font(.headline)
                    DatePicker("Time", selection: $transaction.date, displayedComponents: .hourAndMinute)
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

                    if (transaction.date > Date()) {
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

            Button(action: {viewModel.addPurchase(transaction: transaction, amountAsString: transactionAmount)} ) {
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
