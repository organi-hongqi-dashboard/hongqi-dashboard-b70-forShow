import QtQuick 2.2

Rectangle {
    id: oilPanel

    property int valueFule: CarStatus.fuel

    Item {
        id: numFule

        Image {
            id: i8___1
            x: 312
            y: 669
            opacity: valueFule >= 8 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/8___1.png"
        }
        Image {
            id: i7___1
            x: 284
            y: 664
            opacity: valueFule >= 7 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/7___1.png"
        }
        Image {
            id: i6___1
            x: 260
            y: 657
            opacity: valueFule >= 6 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/6___1.png"
        }
        Image {
            id: i5___1
            x: 235
            y: 648
            opacity: valueFule >= 5 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/5___1.png"
        }
        Image {
            id: i4___1
            x: 208
            y: 637
            opacity: valueFule >= 4 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/4___1.png"
        }
        Image {
            id: i3___1
            x: 185
            y: 625
            opacity: valueFule >= 3 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/3___1.png"
        }
        Image {
            id: i2___1
            x: 162
            y: 610
            opacity: valueFule >= 2 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/2___1.png"
        }
        Image {
            id: i1___1
            x: 145
            y: 596
            opacity: valueFule >= 1 * 100 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon333/1___1.png"
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
//                PauseAnimation { duration: 1100 }
//                NumberAnimation { target: oilPanel; property: "y"; from: 210; to: 0; duration: 500; easing.type: Easing.OutBounce }
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
//        oilPanel.state = "show"
//    }
}
