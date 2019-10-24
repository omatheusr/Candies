//___FILEHEADER___

import UIKit

public final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
	
	public static func present(in controller: UIViewController, viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		let view = ___FILEBASENAMEASIDENTIFIER___(viewModel: viewModel)
		controller.present(view, animated: true)
	}

	private var viewModel: ___FILEBASENAMEASIDENTIFIER___Model!

	public convenience init(viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		self.init(nibName: nil, bundle: nil)
		self.viewModel = viewModel
		self.viewModel.delegate = self
	}

    override public func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___ModelDelegate {

    public func update() {
    	// Update all UI elements
    }

}
