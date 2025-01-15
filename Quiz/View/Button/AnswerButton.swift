
import UIKit

@IBDesignable class AnswerButton: UIButton {

    override func draw(_ rect: CGRect) {
        // Drawing code
        
        layer.cornerRadius = 20
        
//        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        
        didSet {
            layer.borderWidth = borderWidth
        }
         
    }

}
