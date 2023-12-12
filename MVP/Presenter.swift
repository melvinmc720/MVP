import Foundation

class Presenter{
    let model:Model
    let view:ViewCounter
    init(model: Model, view: ViewCounter) {
        self.model = model
        self.view = view
    }
    
    public func Increment(){
        self.model.IncrementGuests()
        self.view.displayGuests(number: self.model.guests)
    }
    
    public func Decrement(){
        self.model.DecreaseGuests()
        self.view.displayGuests(number: self.model.guests)
    }
    
}
