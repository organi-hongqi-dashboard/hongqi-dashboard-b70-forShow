import QtQuick 2.2
import QtQuick.Window 2.2
import "content"

Window {
    id: main
    width: 1920
    height: 720
    color: "black"
    visible: true

    Rectangle {
        id: b70
        color: "black"

//        property bool valueDisplayMode: CarStatus.displayMode
//        onValueDisplayModeChanged: {
//            changeState();
//        }
//        function changeState() {
//            if(true === valueDisplayMode) {
//                mainPanel.state = "";
//            } else {
//                mainPanel.state = "show";
//            }
//        }

        MainPanel {
            id: mainPanel
        }
        ChargePanel {
            id: chargePanel
        }

//        transitions: [
//            Transition {
//                from: ""
//                to: "show"
//                SequentialAnimation {
//                    ScriptAction {
//                        script: {
//                            mainPanel.state = "show";
//                            chargePanel.state = "";
//                        }
//                    }
//                }
//            }
//        ]

//        Component.onCompleted: {
//            mainPanel.state = "show";
//            changeState();
//        }
    }
}
