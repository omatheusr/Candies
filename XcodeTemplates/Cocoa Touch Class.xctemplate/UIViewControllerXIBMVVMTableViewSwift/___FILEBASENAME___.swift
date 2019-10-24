//___FILEHEADER___

import UIKit

public final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
	
	public static func present(in controller: UIViewController, viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		let view = ___FILEBASENAMEASIDENTIFIER___(viewModel: viewModel)
		controller.present(view, animated: true)
	}

	private var viewModel: ___FILEBASENAMEASIDENTIFIER___Model!

	@IBOutlet private weak var tableView: UITableView!

	public convenience init(viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		self.init(nibName: nil, bundle: nil)
		self.viewModel = viewModel
		self.viewModel.delegate = self
	}

    override public func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___ModelDelegate {

    public func update() {
    	// Update all UI elements
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        
        cell.textLabel?.text = "\(indexPath.row)"
        cell.detailTextLabel?.text = "\(indexPath.section)"
        
        return cell
    }
    
}
