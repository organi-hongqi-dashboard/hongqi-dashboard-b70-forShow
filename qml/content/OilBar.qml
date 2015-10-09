import QtQuick 2.2

Rectangle {
    id: oilPanel
    y: 210

    Image {
        id: oilBlack2
        x: 1625
        y: 562
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilBlack2.png"
    }
    Image {
        id: oilBlack1
        x: 1583
        y: 570
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilBlack1.png"
    }
    Image {
        id: oilWhite3
        x: 1495
        y: 536
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilWhite3.png"
    }
    Image {
        id: oilWhite2
        x: 1452
        y: 532
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilWhite2.png"
    }
    Image {
        id: oilWhite1
        x: 1413
        y: 523
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilWhite1.png"
    }
    Image {
        id: oilBg
        x: 1443
        y: 526
        opacity: 1.0
        source: "qrc:/rightPanel/images/rightPanel/oilPanel/oilBg.png"
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
                NumberAnimation { target: oilPanel; property: "y"; from: 210; to: 0; duration: 500; easing.type: Easing.OutBounce }
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
        oilPanel.state = "show"
    }
}
