import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {

    property string title: "ISU"

    radius: 10

    color: "#2B2F36"

    border.color: "#434B57"
    border.width: 1

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 15
        spacing: 15

        // Başlık
        RowLayout {

            Layout.fillWidth: true

            Label {
                text: title

                color: "white"

                font.pixelSize: 22
                font.bold: true
            }

            Item {
                Layout.fillWidth: true
            }

            StatusLed {
                status: "Offline"
            }
        }

        // Güç Durumu
        PowerIndicator {
            powerOn: false
        }

        // Mod
        ModeSelector {
            Layout.fillWidth: true
        }

        // Butonlar
        RowLayout {

            Layout.fillWidth: true
            spacing: 8

            ActionButton {
                Layout.fillWidth: true

                text: "Connect"
                iconText: "🟢"

                buttonColor: "#2E7D32"
            }

            ActionButton {
                Layout.fillWidth: true

                text: "Disconnect"
                iconText: "🔴"

                buttonColor: "#C62828"
            }

            ActionButton {
                Layout.fillWidth: true

                text: "Power"
                iconText: "⚡"

                buttonColor: "#1565C0"
            }

        }

        // Switch

        ThreeStateSwitch {

            Layout.fillWidth: true

        }

        Item {

            Layout.fillHeight: true

        }

    }

}