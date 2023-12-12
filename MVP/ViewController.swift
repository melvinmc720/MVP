//
//  ViewController.swift
//  MVP
//
//  Created by milad marandi on 12/11/23.
//

import UIKit

class ViewController: UIViewController , ViewCounter {
    
    
    let model = Model()
    var presenter:Presenter!
    
    let labelCounter:UILabel = {
        let label = UILabel()
        label.text = "0 Guests"
        label.textAlignment = .center
        return label
    }()
    
    let incrementButton:UIButton = {
       let button = UIButton()
        button.setTitle("Increment", for: UIControl.State.normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.tag = 1
        button.addTarget(self, action: #selector(ButtonsAction), for: UIControl.Event.primaryActionTriggered)
        button.layer.masksToBounds = true
        return button
    }()
    
    let DecrementButton:UIButton = {
       let button = UIButton()
        button.setTitle("Increment", for: UIControl.State.normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.tag = 2
        button.addTarget(self, action: #selector(ButtonsAction), for: UIControl.Event.primaryActionTriggered)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(model: model, view: self)
        self.view.addSubview(labelCounter)
        self.view.addSubview(incrementButton)
        self.view.addSubview(DecrementButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        labelCounter.frame.size = CGSize(width: self.view.frame.width - 20, height: 50)
        labelCounter.center = self.view.center
        incrementButton.frame = CGRect(x: self.view.center.x - 160, y: self.view.center.y + 80, width: 100, height: 50)
        DecrementButton.frame = CGRect(x: self.view.center.x + 80, y: self.view.center.y + 80, width: 100, height: 50)
    }
    
    
    func displayGuests(number: Int) {
        self.labelCounter.text = "\(number) Guests"
    }
    
    @objc private func ButtonsAction(_ Button: UIButton){
        if Button.tag == 1{
            self.presenter.Increment()
        }
        else{
            self.presenter.Decrement()
        }
    }


}

