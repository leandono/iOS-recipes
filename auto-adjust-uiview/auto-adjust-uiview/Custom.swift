//
//  Custom.swift
//  auto-adjust-uiview
//
//  Created by Leandro D'Onofrio on 17/4/16.
//  Copyright © 2016 Leandro D'Onofrio. All rights reserved.
//

import UIKit

class Custom: UIView {

    var view: UIView!
    
    @IBOutlet weak var largeLabel: UILabel!
    @IBOutlet weak var shortLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    private func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        largeLabel.text = "This is a large text inside a label that expands his parent container. Note that the label doesn't have a limit of lines to show."
        shortLabel.text = "And this is a short text."
        addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "Custom", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }

}
