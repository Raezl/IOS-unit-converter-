import UIKit

protocol KeyboardDelegate: class {
    func keyWasTapped(character: String)
    func backspace()
    func negative()
    func decimal()
}

class Keyboard: UIView {
    
    weak var delegate: KeyboardDelegate?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initializeSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeSubviews()
    }
    
    func initializeSubviews() {
        let keyBoardFileName = "Keyboard"
        let view = Bundle.main.loadNibNamed(keyBoardFileName, owner: self, options: nil)![0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }
  
    @IBAction func btnOne(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnFive(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnSix(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnSeven(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnEight(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnNine(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnZero(_ sender: UIButton) {
        self.delegate?.keyWasTapped(character: sender.titleLabel!.text!)
    }
    
    @IBAction func btnDecimal(_ sender: UIButton) {
        self.delegate?.decimal()
    }
    
    @IBAction func btnSpace(_ sender: Any) {
        self.delegate?.backspace()
    }
    
    @IBAction func btnNegative(_ sender: Any) {
        self.delegate?.negative()
    }
}
