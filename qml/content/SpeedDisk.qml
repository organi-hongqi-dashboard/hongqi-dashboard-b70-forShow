import QtQuick 2.2

Item {
    id: speedPanel

    property int valueSpeed: CarStatus.speed

    Item {
        id: numSpeed
        opacity: 1.0
        x: 1446
        //        y: 318
        y: 319
        width: 239
        height: 142

        DigitValue {
            id: numSpeedShow
            anchors.centerIn: numSpeed
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
            value: valueSpeed
        }
    }

    Image {
        id: speedPointer
        x: 1242
        y: 388
        opacity: 1
        source: "qrc:/images/images/speedPointer.png"

        transform: Rotation {
            id: pointerRotationSpeed
            origin.x: 1555- speedPointer.x;
            origin.y: 390 - speedPointer.y;
            angle: valueSpeed * 240 / 240//240//valueSpeed * 240 / 240
            Behavior on angle { SpringAnimation{ spring: 1.2; damping: 0.2; }
            }
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

//                PauseAnimation {
//                    duration: 1300
//                }

                NumberAnimation {
                    target: pointerRotationSpeed
                    property: "angle"
                    duration: 1000
                    from: 0
                    to: 240
                }
                NumberAnimation {
                    target: pointerRotationSpeed
                    property: "angle"
                    duration: 1000
                    from: 240
                    to: 0
                }
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
//        speedPanel.state = "show"
//    }
}
