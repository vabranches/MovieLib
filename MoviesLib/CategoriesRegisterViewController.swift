
import UIKit
import CoreData

class CategoriesRegisterViewController: UIViewController {
    
    //MARK: Propriedades e Outlets
    @IBOutlet weak var tableView : UITableView!
    var movie : Movie!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func close(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addUpdateMovie(_ sender: UIBarButtonItem) {
        if movie == nil {
            movie = Movie(context: context)
        }
    }



}
