import QtQuick 2.2

Rectangle {
    id: coolTemPanel
    y: 210

    Item {
        id: eleMotorPanel

        Image {
            id: eleMotorCoolWhi3
            x: 1459
            y: 624
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolWhi3.png"
        }
        Image {
            id: eleMotorCoolWhi2
            x: 1416
            y: 616
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolWhi2.png"
        }
        Image {
            id: eleMotorCoolWhi1
            x: 1376
            y: 601
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolWhi1.png"
        }
        Image {
            id: eleMotorCoolBla2
            x: 1379
            y: 619
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolBla2.png"
        }
        Image {
            id: eleMotorCoolBla1
            x: 1347
            y: 595
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolBla1.png"
        }
        Image {
            id: eleMotorCoolBg
            x: 1315
            y: 574
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/eleMotorPanel/eleMotorCoolBg.png"
        }
    }


    Item {
        id: enginePanel

        Image {
            id: engineCoolBla2
            x: 1730
            y: 595
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineCoolBla2.png"
        }
        Image {
            id: engineCoolBla1
            x: 1699
            y: 617
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineCoolBla1.png"
        }
        Image {
            id: engineCoolWhi3
            x: 1617
            y: 602
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineCoolWhi3.png"
        }
        Image {
            id: engineCoolWhi2
            x: 1575
            y: 616
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineCoolWhi2.png"
        }
        Image {
            id: engineCoolWhi1
            x: 1534
            y: 624
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineCoolWhi1.png"
        }
        Image {
            id: engineBG
            x: 1331
            y: 572
            opacity: 1.0
            source: "qrc:/rightPanel/images/rightPanel/enginePanel/engineBG.png"
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
                PauseAnimation { duration: 1100 }
                NumberAnimation { target: coolTemPanel; property: "y"; from: 210; to: 0; duration: 1000; easing.type: Easing.OutBounce }
            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
    Component.onCompleted: {
        coolTemPanel.state = "show"
    }
}
