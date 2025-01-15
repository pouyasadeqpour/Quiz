import Foundation

struct Quiz {
    
    let question : [Question] = [
    
        Question(text: "سوال با جواب صحیح", answer: true),
        Question(text: "سوال با جواب غلط", answer: false),
        Question(text: "اختاپوس ها می توانند رنگ پوست خود را تغییر دهند", answer: true),
        Question(text: "نهنگ قد بلند ترین حیوان جهان است", answer: false),
        Question(text: "سوپر نووا به معنای انفجار ستاره است", answer: true),
        Question(text: "الماس سخت تر از گرانیت است", answer: true),
        Question(text: "سیاره در منظومه شمسی وجود دارد 7 ", answer: false),
        Question(text: "وسیع ترین صحرای جهان صاحارا است", answer: true),
        Question(text: "ایران ۲۸ استان دارد", answer: false),
        Question(text: "قوی ترین عضله زبان است", answer: true),
        Question(text: "غذای سوشی برای تایلند است", answer: false),
        Question(text: "کتاب هملت برای داوینچی است", answer: false)
    
    ]
    
    var questionIndex : Int = 0
    
    mutating func updateQuestionIndex(){
        
        questionIndex = Int.random(in: 0...question.count - 1)
        
    }

    func getQuestion() -> String {
        return question[questionIndex].text
    }
    
    func checkAnswer(answer: Bool) -> Bool {
        
        if question[questionIndex].answer == answer {
            return true
        } else {
            return false
        }
    }
}
