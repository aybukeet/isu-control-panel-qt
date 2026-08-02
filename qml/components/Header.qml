import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: root

    color: "#1F232A"
    radius: 10
    height: 80

    property string currentTime: Qt.formatTime(new Date(), "HH:mm:ss")
    property string currentDate: Qt.formatDate(new Date(), "dd MMM yyyy")

    Timer {
        interval: 1000
        running: true
        repeat: true

        onTriggered: {
            root.currentTime = Qt.formatTime(new Date(), "HH:mm:ss")
            root.currentDate = Qt.formatDate(new Date(), "dd MMM yyyy")
        }
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 25
        anchors.rightMargin: 25

        spacing: 20

        ColumnLayout {

            Label {
                text: "ISU CONTROL PANEL"

                color: "white"

                font.pixelSize: 30
                font.bold: true
            }

            Label {
                text: "Industrial System Unit"

                color: "#9AA4B2"

                font.pixelSize: 13
            }

        }

        Item {
            Layout.fillWidth: true
        }

        ColumnLayout {

            Label {

                text: root.currentDate

                color: "#C9D1D9"

                font.pixelSize: 14

                horizontalAlignment: Text.AlignRight

            }

            Label {

                text: root.currentTime

                color: "#58A6FF"

                font.pixelSize: 24

                font.bold: true

                horizontalAlignment: Text.AlignRight

            }

        }
    }
}