import QtQuick 2.2

Rectangle {
    id: coolTemPanel

    property int vEngineCoolantCurrentTemp: CarStatus.coolantCurrentTemp
    property int valueWaterTemp: CarStatus.waterTemp

    Item {
        id: waterTemp

        Image {
            id: i8___3
            x: 1509
            y: 668
            opacity: vEngineCoolantCurrentTemp >= 8 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/8___3.png"
        }
        Image {
            id: i7___3
            x: 1480
            y: 664
            opacity: vEngineCoolantCurrentTemp >= 7 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/7___3.png"
        }
        Image {
            id: i6___4
            x: 1456
            y: 658
            opacity: vEngineCoolantCurrentTemp >= 6 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/6___4.png"
        }
        Image {
            id: i5___4
            x: 1431
            y: 650
            opacity: vEngineCoolantCurrentTemp >= 5 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/5___4.png"
        }
        Image {
            id: i4___4
            x: 1404
            y: 640
            opacity: vEngineCoolantCurrentTemp >= 4 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/4___4.png"
        }
        Image {
            id: i3___4
            x: 1381
            y: 628
            opacity: vEngineCoolantCurrentTemp >= 3 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/3___4.png"
        }
        Image {
            id: i2___4
            x: 1358
            y: 614
            opacity: vEngineCoolantCurrentTemp >= 2 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/2___4.png"
        }
        Image {
            id: i1___4
            x: 1341
            y: 600
            opacity: vEngineCoolantCurrentTemp >= 1 * 189 / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon222/1___4.png"
        }

    }

    Item {
        id: engineCoolantCurrentTemp

        //            Image {
        //                id: i8____5
        //                x: 1573
        //                y: 669
        //                opacity: vEngineCoolantCurrentTemp >= 1 * 189 / 8 ? 1.0 : 0.0
        //                source: "qrc:/images/images/bottomFour/icon111/8____5.png"
        //            }
        Image {
            id: i8____5
            x: 1573
            y: 669
            opacity: valueWaterTemp >= 50 + 1 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/8____5.png"
        }
        Image {
            id: i7____5
            x: 1597
            y: 664
            opacity: valueWaterTemp >= 50 + 2 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/7____5.png"
        }
        Image {
            id: i6____5
            x: 1622
            y: 658
            opacity: valueWaterTemp >= 50 + 3 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/6____5.png"
        }
        Image {
            id: i5____5
            x: 1647
            y: 649
            opacity: valueWaterTemp >= 50 + 4 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/5____5.png"
        }
        Image {
            id: i4____5
            x: 1671
            y: 638
            opacity: valueWaterTemp >= 50 + 5 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/4____5.png"
        }
        Image {
            id: i3____5
            x: 1696
            y: 626
            opacity: valueWaterTemp >= 50 + 6 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/3____5.png"
        }
        Image {
            id: i2____4
            x: 1717
            y: 611
            opacity: valueWaterTemp >= 50 + 7 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/2____4.png"
        }
        Image {
            id: i1____4
            x: 1739
            y: 598
            opacity: valueWaterTemp >= 50 + 8 * (130 - 50) / 8 ? 1.0 : 0.0
            source: "qrc:/images/images/bottomFour/icon111/1____4.png"
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
//            SequentialAnimation {
//                PauseAnimation { duration: 1100 }
//                NumberAnimation { target: coolTemPanel; property: "y"; from: 210; to: 0; duration: 1000; easing.type: Easing.OutBounce }
//            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
//    Component.onCompleted: {
//        coolTemPanel.state = "show"
//    }
}
