import UIKit

class MoviesRegisterViewController: UIViewController {
    
    //MARK: Propriedades e Outlets
    var x = String()
    @IBOutlet weak var tfTitle : UITextField!
    @IBOutlet weak var tfRating : UITextField!
    @IBOutlet weak var tfDuration: UITextField!
    @IBOutlet weak var lbCategories : UILabel!
    @IBOutlet weak var tvSummary : UITextView!
    @IBOutlet weak var btAddUpdate : UIButton!
    @IBOutlet weak var ivPoster : UIImageView!
    
    var movie : Movie!
    var category : Category!
    
    //MARK: Metodos Iternos
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Metodos Proprios
    
    //MARK: Actions
    @IBAction func close(_ sender: UIButton?) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func addUpdateMovie(_ sender: UIButton) {
        if movie == nil{
            
        }
        
        movie.title = tfTitle.text
        movie.rating = Double(tfRating.text!)!
        movie.summary = tvSummary.text
        movie.duration = tfDuration.text
        
        do {
            try context.save()
        } catch  {
            print("Alguma coisa aqui")
        }
        close(nil)
    }
}
