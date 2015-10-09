import QtQuick 2.2

Item {
    id: carInfo

    Image {
        id: background
        x: 605
        y: 290
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/background.png"
    }
    Image {
        id: time23_59
        x: 562
        y: 25
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/time23_59.png"
    }
    Image {
        id: temp3
        x: 1324
        y: 25
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/temp23℃.png"
    }
    Image {
        id: upBg
        x: 513
        y: 21
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/upBg.png"
    }
    Image {
        id: odo9999
        x: 1163
        y: 605
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/odo9999.png"
    }
    Image {
        id: trip399_
        x: 651
        y: 604
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/trip399.9_.png"
    }
    Image {
        id: downBg
        x: 599
        y: 610
        opacity: 0
        source: "qrc:/centrePanel/images/centralPanel/downBg.png"
    }


    Item {
        id: infoPanel
        opacity: 0

        Image {
            id: carInfoBg
            x: 752
            y: 229
            opacity: 1.0
            source: "qrc:/centrePanel/images/centralPanel/infoPanel/carInfoBg.png"
        }
        Image {
            id: num6
            x: 970
            y: 274
            opacity: 1.0
            source: "qrc:/centrePanel/images/centralPanel/infoPanel/num6.5.png"
        }
        Image {
            id: num35
            x: 970
            y: 344
            opacity: 1.0
            source: "qrc:/centrePanel/images/centralPanel/infoPanel/num35.5.png"
        }
        Image {
            id: num210
            x: 965
            y: 419
            opacity: 1.0
            source: "qrc:/centrePanel/images/centralPanel/infoPanel/num210.png"
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: background; opacity: 0.0 }
            PropertyChanges { target: time23_59; opacity: 0.0 }
            PropertyChanges { target: temp3; opacity: 0.0 }
            PropertyChanges { target: upBg; opacity: 0.0 }
            PropertyChanges { target: odo9999; opacity: 0.0 }
            PropertyChanges { target: trip399_; opacity: 0.0 }
            PropertyChanges { target: downBg; opacity: 0.0 }
            PropertyChanges { target: infoPanel; opacity: 0.0 }
        },
        State {
            name: "show"
            PropertyChanges { target: background; opacity: 1.0 }
            PropertyChanges { target: time23_59; opacity: 1.0 }
            PropertyChanges { target: temp3; opacity: 1.0 }
            PropertyChanges { target: upBg; opacity: 1.0 }
            PropertyChanges { target: odo9999; opacity: 1.0 }
            PropertyChanges { target: trip399_; opacity: 1.0 }
            PropertyChanges { target: downBg; opacity: 1.0 }
            PropertyChanges { target: infoPanel; opacity: 1.0 }
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
                PauseAnimation { duration: 1100 }
                NumberAnimation { target: background; property: "opacity"; duration: 500 }
                ParallelAnimation {
                    NumberAnimation { target: time23_59; property: "opacity"; duration: 100 }
                    NumberAnimation { target: temp3; property: "opacity"; duration: 100 }
                    NumberAnimation { target: upBg; property: "opacity"; duration: 100 }
                    NumberAnimation { target: odo9999; property: "opacity"; duration: 100 }
                    NumberAnimation { target: trip399_; property: "opacity"; duration: 100 }
                    NumberAnimation { target: downBg; property: "opacity"; duration: 100 }
                    NumberAnimation { target: infoPanel; property: "opacity"; duration: 100 }
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
    Component.onCompleted: {
        carInfo.state = "show"
    }
}
