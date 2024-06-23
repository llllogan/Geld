//
//  RemainingBalanceGraph.swift
//  Geld
//
//  Created by Logan Janssen on 16/6/2024.
//

import SwiftUI
import Charts

struct RemainingBalanceGraph: View {
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                Label("You are trending good", systemImage: "checkmark.circle")
                LineChartExampleView()
            }
        }
    }
}

struct LineChartExampleView: View {
    @Environment(\.colorScheme) var colorScheme

    let balanceData = BalanceDuringWeek.data
    
    var body: some View {
        Chart {
            ForEach(balanceData) {data in
                AreaMark(x: .value("Day", data.day), 
                         y: .value("Remaining", data.balance))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.green.opacity(0.5), Color.green.opacity(0.1)]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                LineMark(
                        x: .value("", data.day),
                        y: .value("", data.balance)
                    )
                    .interpolationMethod(.catmullRom)
                    .lineStyle(StrokeStyle(lineWidth: 2))
                    .foregroundStyle(.green)
            }
            
            RuleMark(x: .value("Vertical Line", "Thursday"))
                .lineStyle(StrokeStyle(lineWidth: 2, dash: [5]))
                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
        }
        .chartXAxis {
            AxisMarks(values: ["Monday", "Wednesday", "Friday", "Sunday"]) { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel()
            }
        }
        .chartYAxis {
            AxisMarks(position: .trailing) { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel()
            }
        }
        .aspectRatio(4/2, contentMode: .fill)
    }
}


#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
