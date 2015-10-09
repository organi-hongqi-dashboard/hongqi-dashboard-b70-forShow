import QtQuick 2.2

Item {
    id: socPanel
    y: 210

    Image {
        id: socWhite3
        x: 416
        y: 600
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socWhite3.png"
    }
    Image {
        id: socWhite2
        x: 372
        y: 614
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socWhite2.png"
    }
    Image {
        id: socWhite1
        x: 333
        y: 625
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socWhite1.png"
    }
    Image {
        id: socBlack2
        x: 169
        y: 594
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socBlack2.png"
    }
    Image {
        id: socBlack1
        x: 497
        y: 616
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socBlack1.png"
    }
    Image {
        id: socBg
        x: 129
        y: 568
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/socPanel/socBg.png"
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
                NumberAnimation { target: socPanel; property: "y"; from: 210; to: 0; duration: 1000; easing.type: Easing.OutBounce }
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
        socPanel.state = "show"
    }
}
