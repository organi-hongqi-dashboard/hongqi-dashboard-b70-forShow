import QtQuick 2.2

Item {
    id: powerKw

    property int valueKw: CarStatus.generatorPower

    Item {
        id: numKw
        opacity: valueKw < 0 ? 0.0 : 1.0
        x: 241
        //        y: 318
        y: 319
        width: 239
        height: 142

        DigitValue {
            id: numKwShow
            anchors.centerIn: numKw
            spacing: -205
            icon0: "qrc:/images/images/num/0.png"
            icon1: "qrc:/images/images/num/1.png"
            icon2: "qrc:/images/images/num/2.png"
            icon3: "qrc:/images/images/num/3.png"
            icon4: "qrc:/images/images/num/4.png"
            icon5: "qrc:/images/images/num/5.png"
            icon6: "qrc:/images/images/num/6.png"
            icon7: "qrc:/images/images/num/7.png"
            icon8: "qrc:/images/images/num/8.png"
            icon9: "qrc:/images/images/num/9.png"
            value: valueKw < 0 ? (-valueKw) : valueKw
        }
    }

    Item {
        id: numKwNagative
        opacity: valueKw < 0 ? 1.0 : 0.0
        x: 241
        //        y: 318
        y: 290
        width: 239
        height: 142

        DigitValue {
            id: numKwNShow
            anchors.centerIn: numKwNagative
            spacing: -112
            icon0: "qrc:/images/images/num/0_green.png"
            icon1: "qrc:/images/images/num/1_green.png"
            icon2: "qrc:/images/images/num/2_green.png"
            icon3: "qrc:/images/images/num/3_green.png"
            icon4: "qrc:/images/images/num/4_green.png"
            icon5: "qrc:/images/images/num/5_green.png"
            icon6: "qrc:/images/images/num/6_green.png"
            icon7: "qrc:/images/images/num/7_green.png"
            icon8: "qrc:/images/images/num/8_green.png"
            icon9: "qrc:/images/images/num/9_green.png"
            value: valueKw < 0 ? (-valueKw) : valueKw
        }
    }

    Image {
        id: kwPointer
        x: 59
        y: 397
        opacity: 1
        source: "qrc:/images/images/kmPointer.png"

        transform: Rotation {
            id: pointerRotationKw
            origin.x: 357.5 - kwPointer.x
            origin.y: 390 - kwPointer.y
            angle: (valueKw <= 100) ? (valueKw + 20) * 252 / 140 : 216 + (valueKw + 20 - 120) * 36 / 100
            Behavior on angle { SpringAnimation{ spring: 2; damping: 0.2} }
        }
    }

    states: [
        State {
            name: ""
        },
        State {
            name: "show"
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
//                ScriptAction {
//                    script: {
//                        CarStatus.active = false;
//                    }
//                }
////                PauseAnimation { duration: 1400 }
//                NumberAnimation { target: pointerRotationKw; property: "angle"; from: 0; to: 252; duration: 1000;  }
//                NumberAnimation { target: pointerRotationKw; property: "angle"; from: 252; to: 0; duration: 1000;  }
//                ScriptAction {
//                    script: {
//                        CarStatus.active = true;
//                    }
//                }
            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
//    Component.onCompleted: {
//        powerKw.state = "show"
//    }
}
