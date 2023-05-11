import Foundation
 
let date = Date()
let dateFormatter = DateFormatter()
 
dateFormatter.dateFormat = "HH:mm:ss"
 
let result = dateFormatter.string(from: date)
print(result)
