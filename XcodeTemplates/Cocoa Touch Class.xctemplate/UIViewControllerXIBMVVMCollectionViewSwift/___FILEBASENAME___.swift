//___FILEHEADER___

import UIKit

public final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
	
	public static func present(in controller: UIViewController, viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		let view = ___FILEBASENAMEASIDENTIFIER___(viewModel: viewModel)
		controller.present(view, animated: true)
	}

	private var viewModel: ___FILEBASENAMEASIDENTIFIER___Model!

	@IBOutlet private weak var collectionView: UICollectionView!

	public convenience init(viewModel: ___FILEBASENAMEASIDENTIFIER___Model) {
		self.init(nibName: nil, bundle: nil)
		self.viewModel = viewModel
		self.viewModel.delegate = self
	}

    override public func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___ModelDelegate {

    public func update() {
    	// Update all UI elements
    }

}


extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .zero
    }
    
}
