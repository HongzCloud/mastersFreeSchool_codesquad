import UIKit

for j in 1..<10 where j % 2 != 0 {
    for i in 1..<10 {
        print("\(j) * \(i) = \(j*i)")
    }
}
