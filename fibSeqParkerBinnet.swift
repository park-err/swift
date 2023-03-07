import UIKit
func fibSeq(previousNum: Int, numBeforePrev: Int) -> Int {
    return previousNum + numBeforePrev
}

func main() {
    var seq = [0, 1]
    let LENGTH = 17
    var i = 2
    
    while (i < LENGTH) {
        seq.append(fibSeq(previousNum: seq[i-1], numBeforePrev: seq[i-2]))
        i += 1
    }
    
    print(seq)
}


main()
