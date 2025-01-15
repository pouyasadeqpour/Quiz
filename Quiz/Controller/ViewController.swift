import UIKit



class ViewController: UIViewController {
        
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        updateQuiz()
    }

    
    
    
    @IBOutlet weak var questionText: UITextView!
    
    @IBAction func showResult(_ sender: UIButton) {
        
        var answer : Bool = true
        if sender.tag == 0 {
            answer = false
        }
        
        let checkAnswer = quiz.checkAnswer(answer: answer)
        
        var alert : UIAlertController!
        if checkAnswer {
            alert = createAlert(description: "Congratulations, You won!", style: .default)
            
        } else {
            alert = createAlert(description: "You lose", style: .destructive)
            
        }
        self.present(alert, animated: true)

        updateQuiz()
        
    }
    
    func createAlert(description: String, style: UIAlertAction.Style) -> UIAlertController {
        
        let alert = UIAlertController(title: "Result", message: description, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: style)
        alert.addAction(action)
        
        return alert
        
    }
    
    func updateQuiz(){
        quiz.updateQuestionIndex()
        questionText.text = quiz.getQuestion()
    }
}

