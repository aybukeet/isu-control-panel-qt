import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GroupBox {

    title: "Switch"

    Layout.fillWidth: true

    background: Rectangle {
        color: "#252A33"
        radius: 8
        border.color: "#4A5563"
        border.width: 1
    }

    label: Label {
        text: parent.title
        color: "#D6D6D6"
        font.bold: true
    }

    ButtonGroup {
        id: switchGroup
    }

    RowLayout {

        anchors.fill: parent
        anchors.margins: 10

        spacing: 18

        RadioButton {
            text: "OFF"
            checked: true
            ButtonGroup.group: switchGroup

            contentItem: Text {
                text: parent.text
                color: "white"
                font.bold: true
                font.pixelSize: 13
                verticalAlignment: Text.AlignVCenter
                leftPadding: parent.indicator.width + parent.spacing
            }
        }

        RadioButton {
            text: "ON"
            ButtonGroup.group: switchGroup

            contentItem: Text {
                text: parent.text
                color: "white"
                font.bold: true
                font.pixelSize: 13
                verticalAlignment: Text.AlignVCenter
                leftPadding: parent.indicator.width + parent.spacing
            }
        }

        RadioButton {
            text: "KILL"
            ButtonGroup.group: switchGroup

            contentItem: Text {
                text: parent.text
                color: "#FF5252"   // KILL kırmızı olsun
                font.bold: true
                font.pixelSize: 13
                verticalAlignment: Text.AlignVCenter
                leftPadding: parent.indicator.width + parent.spacing
            }
        }
    }
}