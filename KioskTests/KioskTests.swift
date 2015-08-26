import ObjectiveC
import UIKit
import Kiosk

var AssociatedObjectHandle: UInt8 = 0

extension UIViewController {
    func wrapInFulfillmentNav() -> UIViewController {
        let nav = FulfillmentNavigationController(rootViewController: self)
        nav.auctionID = ""
        objc_setAssociatedObject(self, &AssociatedObjectHandle, nav, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        return self
    }
}

let auctionStoryboard = UIStoryboard.auction()
let fulfillmentStoryboard = UIStoryboard.fulfillment()
