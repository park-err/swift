import SwiftUI

struct ContentView: View {
    
    @State private var itemSelected = 0
    @State private var itemSelected2 = 1
    @State private var measurement :String = ""
    private let unit = ["cups", "tablespoons", "teaspoons", "milliliters", "liters"]
    
    func convert(_ convert: String) -> String {
        var conversion: Double = 1.0
        let measurement = Double(convert) ?? 0.0
        let fromUnit = unit[itemSelected]
        let toUnit = unit[itemSelected2]
        let cupRate = [
            "cups": 1.0,
            "tablespoons": 16.0,
            "teaspoons": 48.0,
            "milliliters": 236.588,
            "liters": 0.236588
        ]       
        let tbspRate = [
            "cups": 0.0625,
            "tablespoons": 1.0,
            "teaspoons": 3.0,
            "milliliters": 14.7868,
            "liters": 0.0147868
        ]
        let tspRate = [
            "cups": 0.020833,
            "tablespoons": 0.333333,
            "teaspoons": 1.0,
            "milliliters": 4.92892,
            "liters": 0.00492892
        ]
        let mlRate = [
            "cups": 0.00422675,
            "tablespoons": 0.67628,
            "teaspoons": 0.202884,
            "milliliters": 1.0,
            "liters": 0.001
        ]
        let literRate = [
            "cup": 4.22675,
            "tablespoon": 67.628,
            "teaspoon": 202.884,
            "milliliter": 1000.0,
            "liter": 1.0
        ]
        
        switch(fromUnit) {
        case "cups":
            conversion = measurement * (cupRate[toUnit] ?? 0.0)
        case "tablespoons":
            conversion = measurement * (tbspRate[toUnit] ?? 0.0)
        case "teaspoons":
            conversion = measurement * (tspRate[toUnit] ?? 0.0)
        case "milliliters":
            conversion = measurement * (mlRate[toUnit] ?? 0.0)
        case "liters":
            conversion = measurement * (literRate[toUnit] ?? 0.0)
        default:
            print("Whoops, that's not right. :(")
        }
        
        return String(format: "%.2f", conversion)
    }
    
    var body: some View {
        VStack {
            Text("Some Help in the Kitchen")
                .font(.system(.title, design: .rounded))
                .bold()
            VStack {
                Form {
                    Section(header: Text("Units to convert")) {
                        TextField("Enter amount", text: $measurement)
                            .keyboardType(.decimalPad)
                        
                        Picker(selection: $itemSelected, label: Text("From")) {
                            ForEach(0 ..< unit.count) { index in
                                Text(self.unit[index]).tag(index)
                            }
                        }
                        
                        Picker(selection: $itemSelected2, label: Text("To")) {
                            ForEach(0 ..< unit.count) { index in
                                Text(self.unit[index]).tag(index)
                            }
                        }
                        
                    }
                    
                    Section(header: Text("Conversion")) {
                        Text("\(convert(measurement)) \(unit[itemSelected2])")
                    }
                } 
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}
