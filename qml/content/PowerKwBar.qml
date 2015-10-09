import QtQuick 2.2

Item {
    id: powerKwBar
    y: 210

    Image {
        id: powerBlack1
        x: 270
        y: 659
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/powerKwPanel/powerBlack1.png"
    }
    Image {
        id: powerWhite3
        x: 177
        y: 605
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/powerKwPanel/powerWhite3.png"
    }
    Image {
        id: powerWhite2
        x: 134
        y: 584
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/powerKwPanel/powerWhite2.png"
    }
    Image {
        id: powerWhite1
        x: 94
        y: 556
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/powerKwPanel/powerWhite1.png"
    }
    Image {
        id: powerKWGg
        x: 117
        y: 574
        opacity: 1.0
        source: "qrc:/letfPanel/images/letfPanel/powerKwPanel/powerKWGg.png"
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
                NumberAnimation { target: powerKwBar; property: "y"; from: 210; to: 0; duration: 1000; easing.type: Easing.OutBounce }
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
        powerKwBar.state = "show"
    }
}
