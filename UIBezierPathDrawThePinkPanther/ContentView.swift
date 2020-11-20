//
//  ContentView.swift
//  UIBezierPathDrawThePinkPanther
//
//  Created by Jason Deng on 2020/11/19.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
        let view = UIView()
    
        let otherpath = UIBezierPath()
        // 左眼
       
        let eyePath = UIBezierPath()
        let leftEyeRect = CGRect(x: 95, y: 53, width: 18, height: 25)
        let leftEyePath = UIBezierPath(roundedRect: leftEyeRect, cornerRadius: 11)
        eyePath.append(leftEyePath)
        
        // 右眼
        let rightEyeRect = CGRect(x: 117, y: 53, width: 18, height: 25)
        let rightEyePath = UIBezierPath(roundedRect: rightEyeRect, cornerRadius: 11)
        rightEyePath.fill()
        eyePath.append(rightEyePath)
        
        
        // 左瞳孔
        let pupilPath = UIBezierPath()
        let leftPupilRect = CGRect(x: 102, y: 59, width: 7, height: 12)
        let leftPupilPath = UIBezierPath(roundedRect: leftPupilRect, cornerRadius: 20)
        pupilPath.append(leftPupilPath)
        
        // 右瞳孔
        let rightPupilRect = CGRect(x: 122, y: 59, width: 7, height: 12)
        let rightPupilPath = UIBezierPath(roundedRect: rightPupilRect, cornerRadius: 20)
        pupilPath.append(rightPupilPath)

       
        // 鼻
        let noserect = CGRect(x: 98.5, y: 85, width: 32, height: 30)
        let nosePath = UIBezierPath(roundedRect: noserect, cornerRadius: 20)
        // 嘴-開心
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 92, y: 114))
        mouthPath.addCurve(to: CGPoint(x: 136, y: 117), controlPoint1: CGPoint(x: 88, y: 125), controlPoint2: CGPoint(x: 140, y: 128))
//        // 嘴-生氣
//        mouthPath.addCurve(to: CGPoint(x: 136, y: 137), controlPoint1: CGPoint(x: 88, y: 120), controlPoint2: CGPoint(x: 140, y: 118))
        // 鈴噹
        let bellPath = UIBezierPath()
        bellPath.move(to: CGPoint(x: 101, y: 148))
        bellPath.addCurve(to: CGPoint(x: 127, y: 149.5), controlPoint1: CGPoint(x: 103, y: 162), controlPoint2: CGPoint(x: 133, y: 151))
        bellPath.addQuadCurve(to: CGPoint(x: 101, y: 148), controlPoint:CGPoint(x: 109, y: 152))
    

        let path = UIBezierPath()
        // 頭頂
        path.move(to: CGPoint(x: 115, y: 43.6))
        path.addQuadCurve(to: CGPoint(x: 105, y: 44), controlPoint:CGPoint(x: 111, y: 43))
        
        // 耳
        path.addQuadCurve(to: CGPoint(x: 92, y: 19), controlPoint:CGPoint(x: 103, y: 25))
        path.addQuadCurve(to: CGPoint(x: 80, y: 25), controlPoint:CGPoint(x: 81, y: 16))
        path.addCurve(to: CGPoint(x:95, y: 49), controlPoint1: CGPoint(x: 83, y: 38), controlPoint2: CGPoint(x: 94, y: 31))

        // 頭
        path.addQuadCurve(to: CGPoint(x: 84, y: 103), controlPoint:CGPoint(x: 75, y: 66))
        // 下巴top
        path.addQuadCurve(to: CGPoint(x: 84, y: 140), controlPoint:CGPoint(x: 66, y: 122))
        //下巴side
        path.addQuadCurve(to: CGPoint(x: 95.5, y: 146), controlPoint:CGPoint(x: 94, y: 148))
        //下巴bottom
        let chinBottomPath = UIBezierPath()
        chinBottomPath.move(to: CGPoint(x: 95.5, y: 146.5))

        chinBottomPath.addQuadCurve(to: CGPoint(x: 135, y: 146.5), controlPoint:CGPoint(x: 117, y: 154))
        mouthPath.append(chinBottomPath)
        // 手
        path.addQuadCurve(to: CGPoint(x: 78, y: 185), controlPoint:CGPoint(x: 79, y: 165.5))
        path.addCurve(to: CGPoint(x: 94, y: 195), controlPoint1: CGPoint(x: 56, y: 197), controlPoint2: CGPoint(x: 83, y: 205))
        
        // 左腋下到腰線
        let leftArmpitPath = UIBezierPath()
        leftArmpitPath.move(to: CGPoint(x: 95, y: 153))
        leftArmpitPath.addQuadCurve(to: CGPoint(x: 94, y: 195), controlPoint:CGPoint(x: 84, y: 174))
        mouthPath.append(leftArmpitPath)
        // 右腋下到腰線
        let rightArmpitPath = UIBezierPath()
        rightArmpitPath.move(to: CGPoint(x: 135, y: 156))
        rightArmpitPath.addQuadCurve(to: CGPoint(x: 135, y: 195), controlPoint:CGPoint(x: 145, y: 185))
        mouthPath.append(rightArmpitPath)
        
        
        // 左腰
        path.addQuadCurve(to: CGPoint(x: 96, y: 199), controlPoint:CGPoint(x: 95, y: 195))
        // 左腿外
        path.addLine(to: CGPoint(x: 87, y: 239))
        // 左鞋上-外
        path.addQuadCurve(to: CGPoint(x: 75, y: 249), controlPoint:CGPoint(x: 74, y: 245))
        // 左鞋前-外
        path.addQuadCurve(to: CGPoint(x: 77, y: 256), controlPoint:CGPoint(x: 73, y: 253))
        // 左鞋下
        path.addQuadCurve(to: CGPoint(x: 101, y: 257), controlPoint:CGPoint(x: 86, y: 262))
        // 左鞋內
        path.addQuadCurve(to: CGPoint(x: 107.3, y: 242), controlPoint:CGPoint(x: 116, y: 250.6))
        // 左腿內
        path.addLine(to: CGPoint(x: 113, y: 206.5))
        // 左跨下
        path.addLine(to: CGPoint(x: 115, y: 206.5))
        
        // 黃尾巴
        let yellowTailPath = UIBezierPath()
        yellowTailPath.move(to: CGPoint(x: 135, y: 200))
        yellowTailPath.addCurve(to: CGPoint(x: 137, y: 212), controlPoint1: CGPoint(x: 149, y: 205), controlPoint2: CGPoint(x: 151, y: 215))
        
        // 黑尾巴
        let blackTailPath = UIBezierPath()
        blackTailPath.move(to: CGPoint(x: 143, y: 205))
        blackTailPath.addCurve(to: CGPoint(x: 141, y: 212), controlPoint1: CGPoint(x: 179, y: 202), controlPoint2: CGPoint(x: 157, y: 228))
        blackTailPath.addQuadCurve(to: CGPoint(x: 143, y: 205), controlPoint:CGPoint(x: 144, y: 208))
    
        // show
        let leftLayer = CAShapeLayer()
        let yellowColor = CGColor(red: 228/255, green: 168/255, blue: 86/255, alpha: 1)
        let lineColor = CGColor(red: 36/255, green: 25/255, blue: 22/255, alpha: 1)
        let lightBlackColor = CGColor(srgbRed: 62/255, green: 56/255, blue: 53/255, alpha: 1)
        leftLayer.path = path.cgPath
        leftLayer.strokeColor = lineColor
        leftLayer.fillColor = yellowColor
//        leftLayer.fillColor = UIColor.clear.cgColor
        leftLayer.lineWidth = 1
        view.layer.addSublayer(leftLayer)
        
        let rightLayer = CAShapeLayer()
        rightLayer.path = path.cgPath
        let moveDistance = path.bounds.maxX + path.bounds.minX + path.bounds.width
        rightLayer.setAffineTransform(CGAffineTransform(scaleX: -1, y: 1).concatenating(CGAffineTransform(translationX: moveDistance, y: 0)))
        rightLayer.strokeColor = lineColor
        rightLayer.fillColor = yellowColor
//        rightLayer.fillColor = UIColor.clear.cgColor
        rightLayer.lineWidth = 1
        view.layer.addSublayer(rightLayer)
        
        let otherLayer = CAShapeLayer()
        otherLayer.path = otherpath.cgPath
        otherLayer.strokeColor = lineColor
        otherLayer.fillColor = UIColor.clear.cgColor
        otherLayer.lineWidth = 1
        view.layer.addSublayer(otherLayer)
        
        
        
        // 眼show
        let eyeLayer = CAShapeLayer()
        eyeLayer.path = eyePath.cgPath
        eyeLayer.strokeColor = lineColor
        eyeLayer.fillColor = UIColor.white.cgColor
        eyeLayer.lineWidth = 1
        view.layer.addSublayer(eyeLayer)
        
        // 瞳孔show
        let pupilLayer = CAShapeLayer()
        pupilLayer.path = pupilPath.cgPath
        pupilLayer.strokeColor = lineColor
        pupilLayer.fillColor = UIColor.black.cgColor
        pupilLayer.lineWidth = 1
        view.layer.addSublayer(pupilLayer)
        
        // 鼻子 show
        let noseLayer = CAShapeLayer()
        noseLayer.path = nosePath.cgPath
        noseLayer.strokeColor = lineColor
        noseLayer.fillColor = lightBlackColor
        noseLayer.lineWidth = 1
        view.layer.addSublayer(noseLayer)
        // 鼻孔
        let whiteView = UIView(frame: CGRect(x: 112, y: 93, width: 6, height: 6))
        whiteView.backgroundColor = UIColor.white
        view.addSubview(whiteView)
    
        // 嘴show
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.strokeColor = UIColor.black.cgColor
        mouthLayer.fillColor = UIColor.clear.cgColor
        mouthLayer.lineWidth = 1
        view.layer.addSublayer(mouthLayer)
        
        // 鈴噹show
        let bellLayer = CAShapeLayer()
        bellLayer.path = bellPath.cgPath
        bellLayer.strokeColor = lineColor
        bellLayer.fillColor = UIColor.yellow.cgColor
        bellLayer.lineWidth = 1
        view.layer.addSublayer(bellLayer)
        
        // 黃尾巴show
        let yellowTailLayer = CAShapeLayer()
        yellowTailLayer.path = yellowTailPath.cgPath
        yellowTailLayer.strokeColor = lineColor
        yellowTailLayer.fillColor = yellowColor
        yellowTailLayer.lineWidth = 1
        view.layer.addSublayer(yellowTailLayer)
        
        // 黑尾巴show
        let blackTailLayer = CAShapeLayer()
        blackTailLayer.path = blackTailPath.cgPath
        blackTailLayer.strokeColor = lineColor
        blackTailLayer.fillColor = lightBlackColor
        blackTailLayer.lineWidth = 1
        view.layer.addSublayer(blackTailLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
               
        DrawView()
            .offset(x: 80, y: 150)
            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
                
    }
}
