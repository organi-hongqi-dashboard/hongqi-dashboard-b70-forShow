import QtQuick 2.2

Item {
    id: mainPanel
    visible: false
    state: CarStatus.displayMode ? "" : "show"

    property int nameAvgFuel: CarStatus.avgFuel
    property int nameInstantaneousFuelUint: CarStatus.instantaneousFuel
    property int valueFuleLastTime: CarStatus.fuel

    Item {
        id: normalMode

        Image {
            id: background
            x: -44
            y: 0
            opacity: 1.0
            source: "qrc:/images/images/background.png"
        }
    }

    LeftPanel {
        id: leftPanel
        state: ""
    }

    RightPanel {
        id: rightPanel
        state: ""
    }

    CentrePanel {
        id: centrePanel
        state: ""
    }

    TipsIcon {
        id: carTipsIcon
    }

    Loader {
        id: menuPanel
        active: false
        asynchronous: true
        source: "qrc:/qml/qml/content/MenuPanel.qml"
        onLoaded: {
            menuPanel.item.state = "show";
        }
    }

    Loader {
        id: tripCleanPanel
        active: false
        asynchronous: true
        source: "qrc:/qml/qml/content/TripCleanPanel.qml"
        onLoaded: {
            tripCleanPanel.item.state = "show";
        }
    }

    function buttonLeft() {
        /* trip clean panel is displaying */
        if (tripCleanPanel.active && tripCleanPanel.item.state === "show") {
            tripCleanPanel.item.subDigit();

            return;
        }

        /* time setting panel(menuPanel) is displaying */
        if (menuPanel.active && menuPanel.item.state === "show") {
            menuPanel.item.subDigit();

            return;
        }

        /* The two panels above are not displaying */
        if (true == centrePanel.carDoorValue)
            return;
        else {
            if (false == centrePanel.isEnergyFlowShow)
                centrePanel.isEnergyFlowShow = true;
            else
                centrePanel.isEnergyFlowShow = false;
        }
    }

    function buttonRight() {
        /* trip clean panel is displaying */
        if (tripCleanPanel.active && tripCleanPanel.item.state === "show") {
            tripCleanPanel.item.addDigit();

            return;
        }

        /* time setting panel(menuPanel) is displaying */
        if (menuPanel.active && menuPanel.item.state === "show") {
            menuPanel.item.addDigit();

            return;
        }

        /* The two panels above are not displaying */
        if (true == centrePanel.carDoorValue)
            return;
        else {
            if (false == centrePanel.isEnergyFlowShow)
                centrePanel.isEnergyFlowShow = true;
            else
                centrePanel.isEnergyFlowShow = false;
        }
    }

    function buttonShort() {
        if (mainPanel.state === "")
            return;

        /* trip clean panel is displaying */
        if (tripCleanPanel.active && tripCleanPanel.item.state === "show") {
            tripCleanPanel.item.nextIndex();

            return;
        }

        /* time setting panel(menuPanel) is displaying */
        if (menuPanel.active && menuPanel.item.state === "show") {
            menuPanel.item.nextIndex();

            return;
        }

        /* trigger for time setting panel display */
        if (!menuPanel.active || menuPanel.item.state === "") {
            if (!menuPanel.active) {
                menuPanel.active = true;
            }
            else {
                menuPanel.item.state = "show";
            }
        }
    }

    function buttonLong() {
        if (mainPanel.state === "")
            return;

        if (!menuPanel.active || menuPanel.item.state === "") {
            if (!tripCleanPanel.active) {
                tripCleanPanel.active = true;
            }
            else {
                tripCleanPanel.item.state = "show";
            }
        }
    }

    focus: true
    Keys.onPressed: {
        switch (event.key) {
        case Qt.Key_Down:
            buttonLong();
            break
        case Qt.Key_Up:
            buttonShort();
            break
        case Qt.Key_Left:
            buttonLeft();
            break
        case Qt.Key_Right:
            buttonRight();
            break
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: mainPanel; visible: false }
            PropertyChanges { target: leftPanel; state: "" }
            PropertyChanges { target: rightPanel; state: "" }
            PropertyChanges { target: centrePanel; state: "" }
            PropertyChanges { target: carTipsIcon; state: "" }
            PropertyChanges { target: menuPanel; active: false }
            PropertyChanges { target: tripCleanPanel; active: false }
        },
        State {
            name: "show"
            PropertyChanges { target: mainPanel; visible: true }
            PropertyChanges { target: leftPanel; state: "show" }
            PropertyChanges { target: rightPanel; state: "show" }
            PropertyChanges { target: centrePanel; state: "show" }
            PropertyChanges { target: carTipsIcon; state: "show" }
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


    Component.onCompleted: {
        CarStatus.leftButton.connect(buttonLeft);
        CarStatus.rightButton.connect(buttonRight);
        CarStatus.okButtonShort.connect(buttonShort);
        CarStatus.okButtonLong.connect(buttonLong);
    }
}
