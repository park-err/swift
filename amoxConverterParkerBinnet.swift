
import UIKit

func milligram(ml: Double) -> Double {
    return (ml * 400) / 5
}

func updatedMil(mg: Double, origMil: Double) -> String {
    return ("\(origMil) ml of Amoxicillin 400mg/5ml converts to \((mg * 5) / 250) ml of Amoxicillin 250mg/5ml")
}

func conversion(origMil: Double) {
    // x/origMil = 400mg/5ml
    var mg = milligram(ml: origMil)
    
    // mg/x = 250mg/5ml
    print(updatedMil(mg: mg, origMil: origMil))
}

func main() {
    // ml of amoxicillin 400 per 5
    var ml = 6.2
    conversion(origMil: ml)
}

main()
