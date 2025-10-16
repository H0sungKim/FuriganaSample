//
//  String+.swift
//  FuriganaSample
//
//  Created by 김호성 on 2025.09.14.
//

import Foundation
import UIKit

extension String {
    func rubyAnnotated(_ rubyAnnotations: [RubyAnnotation], bodyColor: UIColor = .label, bodyFont: UIFont = .systemFont(ofSize: 16), rubyColor: UIColor = .secondaryLabel, rubyFont: UIFont = .systemFont(ofSize: 8)) -> NSAttributedString? {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(.font, value: bodyFont, range: NSRange(location: 0, length: attributedString.length))
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineHeightMultiple = 1.5
        
        attributedString.addAttributes([
            .paragraphStyle: paragraphStyle,
            .foregroundColor: bodyColor
        ], range: NSRange(location: 0, length: attributedString.length))
        
        let rubyAttribute: [CFString: Any] =  [
            kCTRubyAnnotationSizeFactorAttributeName: 0.5,
            kCTForegroundColorAttributeName: rubyColor,
            kCTFontAttributeName: rubyFont
        ]
        for rubyAnnotation in rubyAnnotations {
            let ctRubyAnnotation = CTRubyAnnotationCreateWithAttributes(
                .auto,
                .auto,
                .before,
                rubyAnnotation.text as CFString,
                rubyAttribute as CFDictionary
            )
            attributedString.addAttributes([kCTRubyAnnotationAttributeName as NSAttributedString.Key: ctRubyAnnotation], range: NSRange(rubyAnnotation.range))
        }
        return attributedString
    }
}
