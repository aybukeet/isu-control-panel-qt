import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {

    id: root

    property string title: "ISU"

    property bool connected: false
    property bool powered: false
    property bool killed: false
    property string switchState: "OFF"

    radius: 10

    color: "#2A2F36"

    border.color: "#404854"
    border.width: 1

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 18
        spacing: 14

        RowLayout {

            Layout.fillWidth: true

            Label {
                text: root.title
                color: "white"
                font.pixelSize: 22
                font.bold: true
            }

            Item {
                Layout.fillWidth: true
            }

            StatusLed {
                status: root.connected ? "Ready" : "Offline"
            }

        }

        Rectangle {
            Layout.fillWidth: true
            height: 1
            color: "#404854"
        }

        RowLayout {

            Layout.fillWidth: true

            Label {
                text: "⚡"
                font.pixelSize: 18
            }

            Label {
                text: "Power"
                color: "#D6D6D6"
                font.bold: true
            }

            Item {
                Layout.fillWidth: true
            }

            Label {
                text: root.powered ? "ON" : "OFF"
                color: root.powered ? "#4CAF50" : "#F44336"
                font.bold: true
            }

        }

        ColumnLayout {

            Layout.fillWidth: true

            spacing: 5

            Label {
                text: "Mode"
                color: "#D6D6D6"
                font.bold: true
            }

            ComboBox {

                Layout.fillWidth: true

                model: [
                    "Normal",
                    "Test",
                    "Maintenance"
                ]

            }

        }

        RowLayout {

            Layout.fillWidth: true

            spacing: 8

            Button {

                Layout.fillWidth: true

                text: "🔌 Connect"

                enabled: !root.connected && !root.killed

                onClicked: {

                    root.connected = true

                }

            }

            Button {

                Layout.fillWidth: true

                text: "⛔ Disconnect"

                enabled: root.connected && !root.killed

                onClicked: {

                    root.connected = false
                    root.powered = false

                }

            }

            Button {

                Layout.fillWidth: true

                text: "⚡ Power"

                enabled: root.connected && !root.killed

                onClicked: {

                    root.powered = !root.powered

                }

            }

        }

        ThreeStateSwitch {

            Layout.fillWidth: true

            state: root.switchState

            onStateChanged: {

                root.switchState = state

                if(state === "KILL") {

                    root.killed = true
                    root.connected = false
                    root.powered = false

                } else {

                    root.killed = false

                }

            }

        }

        Label {

            visible: root.killed

            text: "⚠ EMERGENCY STOP ACTIVE"

            color: "#FF5252"

            font.bold: true

            Layout.alignment: Qt.AlignHCenter

        }

        Item {
            Layout.fillHeight: true
        }

    }

}