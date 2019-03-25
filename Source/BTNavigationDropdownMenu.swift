//
//  BTConfiguration.swift
//  BTNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/30/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

// MARK: BTNavigationDropdownMenu
open class BTNavigationDropdownMenu: UIView {
    
    // The color of menu title. Default is darkGrayColor()
    open var menuTitleColor: UIColor! {
        get {
            return self.configuration.menuTitleColor
        }
        set(value) {
            self.configuration.menuTitleColor = value
        }
    }
    
    // The height of the cell. Default is 50
    open var cellHeight: CGFloat! {
        get {
            return self.configuration.cellHeight
        }
        set(value) {
            self.configuration.cellHeight = value
        }
    }
    
    // The color of the cell background. Default is whiteColor()
    open var cellBackgroundColor: UIColor! {
        get {
            return self.configuration.cellBackgroundColor
        }
        set(color) {
            self.configuration.cellBackgroundColor = color
        }
    }
    
    // The tint color of the arrow. Default is whiteColor()
    open var arrowTintColor: UIColor! {
        get {
            return self.menuArrow.tintColor
        }
        set(color) {
            self.menuArrow.tintColor = color
        }
    }
    
    open var cellSeparatorColor: UIColor! {
        get {
            return self.configuration.cellSeparatorColor
        }
        set(value) {
            self.configuration.cellSeparatorColor = value
        }
    }
    
    // The color of the text inside cell. Default is darkGrayColor()
    open var cellTextLabelColor: UIColor! {
        get {
            return self.configuration.cellTextLabelColor
        }
        set(value) {
            self.configuration.cellTextLabelColor = value
        }
    }
    
    // The color of the text inside a selected cell. Default is darkGrayColor()
    open var selectedCellTextLabelColor: UIColor! {
        get {
            return self.configuration.selectedCellTextLabelColor
        }
        set(value) {
            self.configuration.selectedCellTextLabelColor = value
        }
    }
    
    // The font of the text inside cell. Default is HelveticaNeue-Bold, size 17
    open var cellTextLabelFont: UIFont! {
        get {
            return self.configuration.cellTextLabelFont
        }
        set(value) {
            self.configuration.cellTextLabelFont = value
        }
    }
    
    // The font of the navigation bar title. Default is HelveticaNeue-Bold, size 17
    open var navigationBarTitleFont: UIFont! {
        get {
            return self.configuration.navigationBarTitleFont
        }
        set(value) {
            self.configuration.navigationBarTitleFont = value
            self.menuTitle.font = self.configuration.navigationBarTitleFont
        }
    }
    
    // The alignment of the text inside cell. Default is .Left
    open var cellTextLabelAlignment: NSTextAlignment! {
        get {
            return self.configuration.cellTextLabelAlignment
        }
        set(value) {
            self.configuration.cellTextLabelAlignment = value
        }
    }
    
    // The color of the cell when the cell is selected. Default is lightGrayColor()
    open var cellSelectionColor: UIColor! {
        get {
            return self.configuration.cellSelectionColor
        }
        set(value) {
            self.configuration.cellSelectionColor = value
        }
    }
    
    // The checkmark icon of the cell
    open var checkMarkImage: UIImage! {
        get {
            return self.configuration.checkMarkImage
        }
        set(value) {
            self.configuration.checkMarkImage = value
        }
    }
    
    // The boolean value that decides if selected color of cell is visible when the menu is shown. Default is false
    open var shouldKeepSelectedCellColor: Bool! {
        get {
            return self.configuration.shouldKeepSelectedCellColor
        }
        set(value) {
            self.configuration.shouldKeepSelectedCellColor = value
        }
    }
    
    // The animation duration of showing/hiding menu. Default is 0.3
    open var animationDuration: TimeInterval! {
        get {
            return self.configuration.animationDuration
        }
        set(value) {
            self.configuration.animationDuration = value
        }
    }
    
    // The arrow next to navigation title
    open var arrowImage: UIImage! {
        get {
            return self.configuration.arrowImage
        }
        set(value) {
            self.configuration.arrowImage = value.withRenderingMode(.alwaysTemplate)
            self.menuArrow.image = self.configuration.arrowImage
        }
    }
    
    // The padding between navigation title and arrow
    open var arrowPadding: CGFloat! {
        get {
            return self.configuration.arrowPadding
        }
        set(value) {
            self.configuration.arrowPadding = value
        }
    }
    
    // The color of the mask layer. Default is blackColor()
    open var maskBackgroundColor: UIColor! {
        get {
            return self.configuration.maskBackgroundColor
        }
        set(value) {
            self.configuration.maskBackgroundColor = value
        }
    }
    
    // The opacity of the mask layer. Default is 0.3
    open var maskBackgroundOpacity: CGFloat! {
        get {
            return self.configuration.maskBackgroundOpacity
        }
        set(value) {
            self.configuration.maskBackgroundOpacity = value
        }
    }
    
    // The boolean value that decides if you want to change the title text when a cell is selected. Default is true
    open var shouldChangeTitleText: Bool! {
        get {
            return self.configuration.shouldChangeTitleText
        }
        set(value) {
            self.configuration.shouldChangeTitleText = value
        }
    }
    
    open var imageMode: Bool! {
        get {
            return self.configuration.imageMode
        }
        set(value) {
            self.configuration.imageMode = value
        }
    }
    
    open var dynamicSelection: [Bool]? {
        get {
            return self.configuration.dynamicSelection
        }
        set(value) {
            self.configuration.dynamicSelection = value
        }
    }
    
    open var dynamicBackgrounds: [UIColor]? {
        get {
            return self.configuration.dynamicBackgrounds
        }
        set(value) {
            self.configuration.dynamicBackgrounds = value
        }
    }
    
    open var tableFooterView: UIView {
        get {
            return self.configuration.footerView
        }
        set(value) {
            self.configuration.footerView = value
            self.tableView.updateConfiguration(configuration)
        }
    }
    
    open var titleImageHeight: CGFloat {
        get {
            return self.configuration.titleImageHeight
        }
        set(value) {
            self.configuration.titleImageHeight = value
        }
    }
    
    open var cellImageHeight: CGFloat {
        get {
            return self.configuration.cellImageHeight
        }
        set(value) {
            self.configuration.cellImageHeight = value
        }
    }
    
    open var didSelectItemAtIndexHandler: ((_ indexPath: Int) -> ())?
    open var isShown: Bool!
    
    fileprivate weak var navigationController: UINavigationController?
    fileprivate var configuration = BTConfiguration()
    fileprivate var topSeparator: UIView!
    fileprivate var menuButton: UIButton!
    fileprivate var menuTitle: UILabel!
    fileprivate var menuImageTitle: UIImageView!
    fileprivate var menuArrow: UIImageView!
    fileprivate var backgroundView: UIView!
    fileprivate var tableView: BTTableView!
    fileprivate var items: [String]!
    fileprivate var images: [UIImage]!
    fileprivate var menuWrapper: UIView!
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     
     Legacy init converted as a convenience initializer to call the default init
     
     - parameters:
     - navigationController: The present and visible navigation controller.
     - containerView: The container view. Default is keyWindow.
     - title: A string to define title to be displayed.
     - items: The array of items to select
     */
    public convenience init(navigationController: UINavigationController? = nil, containerView: UIView = UIApplication.shared.keyWindow!, title: String, items: [String]) {
        
        self.init(navigationController: navigationController, containerView: containerView, title: BTTitle.title(title), items: items)
    }
    
    /**
     
     Default init. This will allow the user to define a string or a index where the user can
     pre-define as a default selected. This is specially handy for when it's necessary to
     restore from a saved state
     
     - parameters:
     - navigationController: The present and visible navigation controller.
     - containerView: The container view. Default is keyWindow.
     - title: An enum to define title to be displayed, can be a string or index of items.
     - items: The array of items to select
     */
    public init(navigationController: UINavigationController? = nil, containerView: UIView = UIApplication.shared.keyWindow!, title: BTTitle, items: [String]) {
        // Key window
        guard let window = UIApplication.shared.keyWindow else {
            super.init(frame: CGRect.zero)
            return
        }
        
        // Navigation controller
        if let navigationController = navigationController {
            self.navigationController = navigationController
        } else {
            self.navigationController = window.rootViewController?.topMostViewController?.navigationController
        }
        
        // Get titleSize
        let titleSize: CGSize
        let titleToDisplay: String
        
        switch title{
        case .index(let index):
            if index < items.count{
                titleToDisplay = items[index]
            } else {
                titleToDisplay = ""
            }
        case .title(let title):
            titleToDisplay = title
        }
        
        titleSize = (titleToDisplay as NSString).size(withAttributes: [.font: self.configuration.navigationBarTitleFont])
        
        // Set frame
        let frame = CGRect(x: 0, y: 0, width: titleSize.width + (self.configuration.arrowPadding + self.configuration.arrowImage.size.width)*2, height: self.navigationController!.navigationBar.frame.height)
        
        super.init(frame:frame)
        
        self.isShown = false
        self.items = items
        
        // Init button as navigation title
        self.menuButton = UIButton(frame: frame)
        self.menuButton.addTarget(self, action: #selector(BTNavigationDropdownMenu.menuButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        self.addSubview(self.menuButton)
        
        self.menuTitle = UILabel(frame: frame)
        self.menuTitle.text = titleToDisplay
        self.menuTitle.textColor = self.menuTitleColor
        self.menuTitle.font = self.configuration.navigationBarTitleFont
        self.menuTitle.textAlignment = self.configuration.cellTextLabelAlignment
        self.menuButton.addSubview(self.menuTitle)
        
        self.menuArrow = UIImageView(image: self.configuration.arrowImage.withRenderingMode(.alwaysTemplate))
        self.menuButton.addSubview(self.menuArrow)
        
        let menuWrapperBounds = window.bounds
        
        // Set up DropdownMenu
        self.menuWrapper = UIView(frame: CGRect(x: menuWrapperBounds.origin.x, y: 0, width: menuWrapperBounds.width, height: menuWrapperBounds.height))
        self.menuWrapper.viewIdentifier = "BTNavigationDropDownMenu-MenuWrapper"
        self.menuWrapper.clipsToBounds = true
        self.menuWrapper.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        // Init background view (under table view)
        self.backgroundView = UIView(frame: menuWrapperBounds)
        self.backgroundView.backgroundColor = self.configuration.maskBackgroundColor
        self.backgroundView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        let backgroundTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(BTNavigationDropdownMenu.hideMenu));
        self.backgroundView.addGestureRecognizer(backgroundTapRecognizer)
        
        // Init properties
        self.setupDefaultConfiguration()
        
        // Init table view
        let navBarHeight = self.navigationController?.navigationBar.bounds.size.height ?? 0
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        self.tableView = BTTableView(frame: CGRect(x: menuWrapperBounds.origin.x, y: menuWrapperBounds.origin.y + 0.5, width: menuWrapperBounds.width, height: menuWrapperBounds.height + 300 - navBarHeight - statusBarHeight), items: items, title: titleToDisplay, configuration: self.configuration)
        
        self.tableView.selectRowAtIndexPathHandler = { [weak self] (indexPath: Int) -> () in
            guard let selfie = self else {
                return
            }
            selfie.didSelectItemAtIndexHandler!(indexPath)
            if selfie.shouldChangeTitleText! {
                selfie.setMenuTitle("\(selfie.tableView.items[indexPath])")
            }
            self?.hideMenu()
            self?.layoutSubviews()
        }
        
        // Add background view & table view to container view
        self.menuWrapper.addSubview(self.backgroundView)
        self.menuWrapper.addSubview(self.tableView)
        
        // Add Line on top
        self.topSeparator = UIView(frame: CGRect(x: 0, y: 0, width: menuWrapperBounds.size.width, height: 0.5))
        self.topSeparator.autoresizingMask = UIView.AutoresizingMask.flexibleWidth
        self.menuWrapper.addSubview(self.topSeparator)
        
        // Remove MenuWrapper from container view to avoid leaks
        containerView.subviews
            .filter({$0.viewIdentifier == "BTNavigationDropDownMenu-MenuWrapper"})
            .forEach({$0.removeFromSuperview()})
        
        // Add Menu View to container view
        containerView.addSubview(self.menuWrapper)
        
        // By default, hide menu view
        self.menuWrapper.isHidden = true
    }

    public init(navigationController: UINavigationController? = nil, containerView: UIView = UIApplication.shared.keyWindow!, config: BTConfiguration, title: UIImage, images: [UIImage]) {
        // Key window
        guard let window = UIApplication.shared.keyWindow else {
            super.init(frame: CGRect.zero)
            return
        }
        
        self.configuration = config
        
        // Navigation controller
        if let navigationController = navigationController {
            self.navigationController = navigationController
        } else {
            self.navigationController = window.rootViewController?.topMostViewController?.navigationController
        }
        
        // Set frame
        let titleRatio = title.size.width/title.size.height
        let titleWidth = titleRatio * self.configuration.titleImageHeight
        let frame = CGRect(x: 0, y: 0, width: titleWidth + (self.configuration.arrowPadding + self.configuration.arrowImage.size.width)*2, height: self.configuration.titleImageHeight)
        
        super.init(frame: frame)
        
        self.isShown = false
        self.images = images
        
        // Init button as navigation title
        self.menuButton = UIButton(frame: frame)
        self.menuButton.addTarget(self, action: #selector(BTNavigationDropdownMenu.menuButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        self.addSubview(self.menuButton)
        
        let titleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(BTNavigationDropdownMenu.menuButtonTapped(_:)));
        
        self.menuImageTitle = UIImageView(frame: CGRect(x: 0, y: 0, width: titleWidth, height: titleImageHeight))
        self.menuImageTitle.image = title
        self.menuImageTitle.contentMode = .scaleAspectFit
        self.menuImageTitle.isUserInteractionEnabled = true
        self.menuImageTitle.addGestureRecognizer(titleTapRecognizer)
        self.menuButton.addSubview(self.menuImageTitle)
        
        self.menuArrow = UIImageView(image: self.configuration.arrowImage.withRenderingMode(.alwaysTemplate))
        self.menuButton.addSubview(self.menuArrow)
        
        let menuWrapperBounds = window.bounds
        
        // Set up DropdownMenu
        self.menuWrapper = UIView(frame: CGRect(x: menuWrapperBounds.origin.x, y: 0, width: menuWrapperBounds.width, height: menuWrapperBounds.height))
        self.menuWrapper.viewIdentifier = "BTNavigationDropDownMenu-MenuWrapper"
        self.menuWrapper.clipsToBounds = true
        self.menuWrapper.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        // Init background view (under table view)
        self.backgroundView = UIView(frame: menuWrapperBounds)
        self.backgroundView.backgroundColor = self.configuration.maskBackgroundColor
        self.backgroundView.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
        
        let backgroundTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(BTNavigationDropdownMenu.hideMenu));
        self.backgroundView.addGestureRecognizer(backgroundTapRecognizer)
        
        // Init properties
        self.setupDefaultConfiguration()
        
        // Init table view
        let navBarHeight = self.navigationController?.navigationBar.bounds.size.height ?? 0
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        self.tableView = BTTableView(frame: CGRect(x: menuWrapperBounds.origin.x, y: menuWrapperBounds.origin.y + 0.5, width: menuWrapperBounds.width, height: menuWrapperBounds.height + 300 - navBarHeight - statusBarHeight), images: images, startIndex: 0, configuration: self.configuration)
        
        self.tableView.selectRowAtIndexPathHandler = { [weak self] (indexPath: Int) -> () in
            guard let selfie = self else {
                return
            }
            selfie.didSelectItemAtIndexHandler!(indexPath)
            
            if let dynamic = selfie.dynamicSelection?[indexPath] {
                if dynamic {
                    selfie.setMenuImageTitle(selfie.tableView.images[indexPath])
                }
            } else if selfie.shouldChangeTitleText {
                selfie.setMenuImageTitle(selfie.tableView.images[indexPath])
            }
            
            self?.hideMenu()
            self?.layoutSubviews()
        }
        
        // Add background view & table view to container view
        self.menuWrapper.addSubview(self.backgroundView)
        self.menuWrapper.addSubview(self.tableView)
        
        // Add Line on top
        self.topSeparator = UIView(frame: CGRect(x: 0, y: 0, width: menuWrapperBounds.size.width, height: 0.5))
        self.topSeparator.autoresizingMask = UIView.AutoresizingMask.flexibleWidth
        self.menuWrapper.addSubview(self.topSeparator)
        
        // Remove MenuWrapper from container view to avoid leaks
        containerView.subviews
            .filter({$0.viewIdentifier == "BTNavigationDropDownMenu-MenuWrapper"})
            .forEach({$0.removeFromSuperview()})
        
        // Add Menu View to container view
        containerView.addSubview(self.menuWrapper)
        
        // By default, hide menu view
        self.menuWrapper.isHidden = true
    }
    
    override open func layoutSubviews() {
        
        if self.imageMode {
            self.menuImageTitle.center = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        } else {
            self.menuTitle.sizeToFit()
            self.menuTitle.center = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
            self.menuTitle.textColor = self.configuration.menuTitleColor
        }
        self.menuArrow.sizeToFit()
        if self.imageMode {
            self.menuArrow.center = CGPoint(x: self.menuImageTitle.frame.maxX + self.configuration.arrowPadding, y: self.frame.size.height/2)
        } else {
            self.menuArrow.center = CGPoint(x: self.menuTitle.frame.maxX + self.configuration.arrowPadding, y: self.frame.size.height/2)
        }
        
        //prevents crash when a pop-up view is presented
        //needs to be moved here to prevent flickering of items in dropdown when view changes
        if self.navigationController == nil {
            if let nav = UIApplication.shared.keyWindow?.rootViewController?.topMostViewController?.navigationController {
                self.navigationController = nav
            } else {
                return
            }
        }
        
        self.menuWrapper.frame.origin.y = navigationController!.navigationBar.frame.maxY
        self.tableView.reloadData()
    }
    
    open func show() {
        if self.isShown == false {
            self.showMenu()
        }
    }
    
    open func hide() {
        if self.isShown == true {
            self.hideMenu()
        }
    }
    
    open func toggle() {
        if(self.isShown == true) {
            self.hideMenu();
        } else {
            self.showMenu();
        }
    }
    
    open func updateImages(_ images: [UIImage]) {
        if !images.isEmpty {
            self.tableView.images = images
            self.tableView.reloadData()
        }
    }
    
    open func updateItems(_ items: [String]) {
        if !items.isEmpty {
            self.tableView.items = items
            self.tableView.reloadData()
        }
    }
    
    open func setSelected(index: Int) {
        self.tableView.selectedIndexPath = index
        self.tableView.reloadData()
        
        if self.shouldChangeTitleText! {
            if imageMode {
                self.setMenuImageTitle(self.tableView.images[index])
            } else {
                self.setMenuTitle("\(self.tableView.items[index])")
            }
        }
    }
    
    func setupDefaultConfiguration() {
        self.menuTitleColor = self.navigationController?.navigationBar.titleTextAttributes?[.foregroundColor] as? UIColor
        self.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        self.cellSeparatorColor = self.navigationController?.navigationBar.titleTextAttributes?[.foregroundColor] as? UIColor
        self.cellTextLabelColor = self.navigationController?.navigationBar.titleTextAttributes?[.foregroundColor] as? UIColor
        
        self.arrowTintColor = self.configuration.arrowTintColor
    }
    
    func showMenu() {
        
        //prevents crash when a pop-up view is presented
        //needs to be moved here to prevent flickering of items in dropdown when view changes
        if self.navigationController == nil {
            if let nav = UIApplication.shared.keyWindow?.rootViewController?.topMostViewController?.navigationController {
                self.navigationController = nav
            } else {
                return
            }
        }
        
        self.menuWrapper.frame.origin.y = self.navigationController!.navigationBar.frame.maxY
        
        
        self.isShown = true
        
        // Table view header
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 300))
        headerView.backgroundColor = self.configuration.cellBackgroundColor
        self.tableView.tableHeaderView = headerView
        
        self.topSeparator.backgroundColor = self.configuration.cellSeparatorColor
        
        // Rotate arrow
        self.rotateArrow()
        
        // Visible menu view
        self.menuWrapper.isHidden = false
        
        // Change background alpha
        self.backgroundView.alpha = 0
        
        // Animation
        if imageMode {
            self.tableView.frame.origin.y = -CGFloat(self.images.count) * self.configuration.cellHeight - 300
        } else {
            self.tableView.frame.origin.y = -CGFloat(self.items.count) * self.configuration.cellHeight - 300
        }
        
        
        // Reload data to dismiss highlight color of selected cell
        self.tableView.reloadData()
        
        self.menuWrapper.superview?.bringSubviewToFront(self.menuWrapper)
        
        UIView.animate(
            withDuration: self.configuration.animationDuration * 1.5,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.5,
            options: [],
            animations: {
                self.tableView.frame.origin.y = CGFloat(-300)
                self.backgroundView.alpha = self.configuration.maskBackgroundOpacity },
            completion: nil
        )
    }
    
    @objc func hideMenu() {
        // Rotate arrow
        self.rotateArrow()
        
        self.isShown = false
        
        // Change background alpha
        self.backgroundView.alpha = self.configuration.maskBackgroundOpacity
        
        UIView.animate(
            withDuration: self.configuration.animationDuration * 1.5,
            delay: 0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.5,
            options: [],
            animations: {
                self.tableView.frame.origin.y = CGFloat(-200)
        }, completion: nil
        )
        
        // Animation
        UIView.animate(
            withDuration: self.configuration.animationDuration,
            delay: 0,
            options: UIView.AnimationOptions(),
            animations: {
                if self.imageMode {
                    self.tableView.frame.origin.y = -CGFloat(self.images.count) * self.configuration.cellHeight - 300
                } else {
                    self.tableView.frame.origin.y = -CGFloat(self.items.count) * self.configuration.cellHeight - 300
                }
                self.backgroundView.alpha = 0 },
            completion: { _ in
                let itemCount = self.imageMode ? self.images.count : self.items.count
                if self.isShown == false && self.tableView.frame.origin.y == -CGFloat(itemCount) * self.configuration.cellHeight - 300 {
                    self.menuWrapper.isHidden = true
                }
        })
    }
    
    func rotateArrow() {
        UIView.animate(withDuration: self.configuration.animationDuration, animations: {[weak self] () -> () in
            if let selfie = self {
                selfie.menuArrow.transform = selfie.menuArrow.transform.rotated(by: 180 * CGFloat(Double.pi/180))
            }
        })
    }
    
    func setMenuTitle(_ title: String) {
        self.menuTitle.text = title
    }
    
    func setMenuImageTitle(_ image: UIImage) {
        let titleRatio = image.size.width/image.size.height
        let titleWidth = titleRatio * titleImageHeight
        let newFrame = CGRect(x: 0, y: 0, width: titleWidth + (self.configuration.arrowPadding + self.configuration.arrowImage.size.width)*2, height: titleImageHeight)
        self.frame = newFrame
        menuButton.frame = newFrame
        self.menuImageTitle.frame = CGRect(x: 0, y: 0, width: titleWidth, height: titleImageHeight)
        self.menuImageTitle.image = image
        self.menuImageTitle.setNeedsLayout()
        self.menuButton.setNeedsLayout()
        self.setNeedsLayout()
    }
    
    @objc func menuButtonTapped(_ sender: UIButton) {
        self.isShown == true ? hideMenu() : showMenu()
    }
    
    open func getImages() -> [UIImage] {
        guard imageMode else { return [] }
        return images
    }
    
    open func getItems() -> [String] {
        guard !imageMode else { return [] }
        return items
    }
}
