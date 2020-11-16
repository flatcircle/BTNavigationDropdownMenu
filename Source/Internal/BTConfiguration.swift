//
//  BTConfiguration.swift
//
//  Copyright (c) 2017 PHAM BA THO (phambatho@gmail.com). All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

public final class BTConfiguration {
    public var menuTitleColor: UIColor?
    public var cellHeight: CGFloat!
    public var cellBackgroundColor: UIColor?
    public var cellSeparatorColor: UIColor?
    public var cellTextLabelColor: UIColor?
    public var selectedCellTextLabelColor: UIColor?
    public var cellTextLabelFont: UIFont!
    public var navigationBarTitleFont: UIFont!
    public var cellTextLabelAlignment: NSTextAlignment!
    public var cellSelectionColor: UIColor?
    public var checkMarkImage: UIImage!
    public var shouldKeepSelectedCellColor: Bool!
    public var arrowTintColor: UIColor?
    public var arrowImage: UIImage!
    public var arrowPadding: CGFloat!
    public var animationDuration: TimeInterval!
    public var maskBackgroundColor: UIColor!
    public var maskBackgroundOpacity: CGFloat!
    public var shouldChangeTitleText: Bool!
    public var imageMode: Bool!
    public var dynamicSelection: [Bool]?
    public var dynamicBackgrounds: [UIColor]?
    public var footerView: UIView!
    public var titleImageHeight: CGFloat!
    public var cellImageHeight: CGFloat!
    
    public init() {
        self.defaultValue()
    }
    
    func defaultValue() {
        // Path for image
        let bundle = Bundle(for: BTConfiguration.self)
        let url = bundle.url(forResource: "BTNavigationDropdownMenu", withExtension: "bundle")
        let imageBundle = Bundle(url: url!)
        let checkMarkImagePath = imageBundle?.path(forResource: "checkmark_icon", ofType: "png")
        let arrowImagePath = imageBundle?.path(forResource: "arrow_down_icon", ofType: "png")

        // Set default values
        self.menuTitleColor = UIColor.darkGray
        self.cellHeight = 50
        self.cellBackgroundColor = UIColor.white
        self.arrowTintColor = UIColor.white
        self.cellSeparatorColor = UIColor.darkGray
        self.cellTextLabelColor = UIColor.darkGray
        self.selectedCellTextLabelColor = UIColor.darkGray
        self.cellTextLabelFont = UIFont.systemFont(ofSize: 17, weight: .bold)
        self.navigationBarTitleFont = UIFont.systemFont(ofSize: 17, weight: .bold)
        self.cellTextLabelAlignment = NSTextAlignment.left
        self.cellSelectionColor = UIColor.lightGray
        self.checkMarkImage = UIImage(contentsOfFile: checkMarkImagePath!)
        self.shouldKeepSelectedCellColor = false
        self.animationDuration = 0.5
        self.arrowImage = UIImage(contentsOfFile: arrowImagePath!)
        self.arrowPadding = 15
        self.maskBackgroundColor = UIColor.black
        self.maskBackgroundOpacity = 0.3
        self.shouldChangeTitleText = true
        self.imageMode = false
        self.dynamicSelection = nil
        self.dynamicBackgrounds = nil
        self.footerView = UIView(frame: .zero)
        self.titleImageHeight = 25
        self.cellImageHeight = 25
    }
}
