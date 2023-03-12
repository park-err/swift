
func exist(item: String, items: [String]) -> Bool {
    // check if item exists in array
    for i in items {
        if (item == i) {
            return true
        }
    }
    return false
}

func getIndex(item: String, items: [String]) -> Int {
    // returns index of item in array
    var i = 0
    
    // check if item exists in array
    if (exist(item: item, items: items)) {
        while (i < items.count) {
            if (items[i] == item) {
                return i
            }
            
            i += 1
        }
    }else{
        return -1
    }
    
    // should never be used but prevents errors
    return 0
}

func sortList(items: [String]) -> [String] {return items.sorted()}

func main () {
    var games = ["Skyrim", "Bioshock", "AC Odyssey", "GTA", "Fallout 4", "Sims", "A Way Out", "We Happy Few", "Amnesia", "Dead Space", "Destroy All Humans", "AC Valhalla"]
    
    // sort games and find Skyrim
    print("Games: ")
    print(sortList(items: games))
    print("Where's Skyrim?")
    print(getIndex(item: "Skyrim", items: sortList(items: games)))
    
}

main()
