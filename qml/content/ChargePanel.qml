import QtQuick 2.2

Item {
    id: chargePanel
    opacity: 0

    property int valueBatteryPower: CarStatus.soc
    property string textBatteryPower: valueBatteryPower + "%"
    property int valueChargeState: CarStatus.chargeState

    Item {
        id: chargeMode
//        visible: valueDisplayMode == true
//        Image {
//            id: backgroundBattery
//            x: 0
//            y: 0
//            opacity: 1.0
//            source: "qrc:/images/images/backgroundBattery.png"
//        }

        Image {
            id: warnBackground
            x: 699
            y: 216
            visible: valueChargeState == 0 ? false : true      //chargeErrValue == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/warnBackground.png"
        }
        Image {
            id: batteryBase
            x: 807
            y: 348
            opacity: 1.0
            source: "qrc:/images/images/battery/batteryBase.png"
        }


        Image {
            id: charging
            x: 820
            y: 350
            width: valueChargeState != 0 ? 136 / 50 * valueBatteryPower  : 0 // 136 is the width of charging.png
            //                opacity: (valueChargeState == 1 || valueChargeState == 2) ? 1.0 : 0.0
            opacity: valueChargeState == 2 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/charging.png"
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PropertyAnimation { to: 0; duration: 1000 }
                PropertyAnimation { to: 1; duration: 1000 }
                PauseAnimation { duration: 500 }
            }
        }

        Image {
            id: chargingReady
            x: 820
            y: 350
            width: 136 / 50 * valueBatteryPower   // 136 is the width of charging.png
            opacity: valueChargeState == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/charging.png"
            //                SequentialAnimation on opacity {
            //                       loops: Animation.Infinite
            //                       PropertyAnimation { to: 0; duration: 1000 }
            //                       PropertyAnimation { to: 1; duration: 1000 }
            //                       PauseAnimation { duration: 500 }
            //                   }
        }



        Image {
            id: chargeComplete
            x: 820
            y: 350
            opacity: valueChargeState == 3 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/chargeComplete.png"
        }
        Image {
            id: iconCharge
            x: 831
            y: 243
            opacity: (valueChargeState != 0 &&  valueChargeState != 4) ? 1.0 : 0.0
            source: "qrc:/images/images/charge/iconCharge.png"
        }
        Image {
            id: chargeFault
            x: 820
            y: 350
            opacity: (valueChargeState == 4) ? 1.0 : 0.0
            source: "qrc:/images/images/charge/chargeFault.png"
        }
        Image {
            id: chargeOutLine
            x: 807
            y: 348
            opacity: 1.0
            source: "qrc:/images/images/charge/chargeOutLine.png"
        }
        Text {
            id: numBatteryPower
            x: 916
            y: 382
            opacity: (valueChargeState != 4 && valueChargeState != 0 && valueChargeState != 3) ? 1.0 : 0.0
            color: "white"
            font.pixelSize: 40
            font.bold: true
            text: textBatteryPower
        }
        Image {
            id: chargeFaultText
            x: 890
            y: 241
            opacity: (valueChargeState == 4)  ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargeFault.png"
        }
        Image {
            id: chargeReadyText
            x: 890
            y: 241
            opacity: valueChargeState == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargReady.png"
        }
        Image {
            id: chargingText
            x: 890
            y: 241
            opacity: valueChargeState == 2 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/charging.png"
        }
        Image {
            id: chargeCompleteText
            x: 890
            y: 241
            opacity: valueChargeState == 3 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargeComplete.png"
        }

    }

    states: [
        State {
            name: ""
            PropertyChanges { target: chargePanel; opacity: 0 }
        },
        State {
            name: "show"
            PropertyChanges { target: chargePanel; opacity: 1 }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {

//                NumberAnimation {
//                    target: chargePanel
//                    property: "x"
//                    duration: 2000
//                    to: 1111
//                }
//                NumberAnimation {
//                    target: chargePanel
//                    property: "x"
//                    duration: 2000
//                    to: 0
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
//        chargePanel.state = ""
//    }
}
