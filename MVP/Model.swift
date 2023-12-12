import Foundation


class Model{
    var guests:Int
    
    init(guests: Int = 0) {
        self.guests = guests
    }
    
    func IncrementGuests(){
        self.guests += 1
    }
    
    func DecreaseGuests(){
        if guests > 0 {
            self.guests -= 1
        }
    }
}
