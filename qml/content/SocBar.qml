import QtQuick 2.2

Item {
    id: socPanel

    property int valueBatteryPower: CarStatus.soc

    Item {
        id: batteryPower

        Image {
            id: i8____2
            x: 375
            y: 669
            opacity: valueBatteryPower >= 5 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/8____2.png"
        }
        Image {
            id: i7____2
            x: 399
            y: 664
            opacity: valueBatteryPower >= 17 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/7____2.png"
        }
        Image {
            id: i6____2
            x: 425
            y: 657
            opacity: valueBatteryPower >= 29 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/6____2.png"
        }
        Image {
            id: i5____2
            x: 450
            y: 649
            opacity: valueBatteryPower >= 41 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/5____2.png"
        }
        Image {
            id: i4____2
            x: 474
            y: 638
            opacity: valueBatteryPower >= 53 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/4____2.png"
        }
        Image {
            id: i3____2
            x: 499
            y: 626
            opacity: valueBatteryPower >= 65 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/3____2.png"
        }
        Image {
            id: i2____2
            x: 520
            y: 612
            opacity: valueBatteryPower >= 77 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/2____2.png"
        }
        Image {
            id: i1____2
            x: 542
            y: 598
            opacity: valueBatteryPower >= 89 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon444/1____2.png"
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
//        socPanel.state = "show"
//    }
}
