import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GroupBox {

    title: "Switch"

    Layout.fillWidth: true

    ButtonGroup {
        id: switchGroup
    }

    RowLayout {

        anchors.fill: parent

        RadioButton {
            text: "OFF"
            checked: true
            ButtonGroup.group: switchGroup
        }

        RadioButton {
            text: "ON"
            ButtonGroup.group: switchGroup
        }

        RadioButton {
            text: "KILL"
            ButtonGroup.group: switchGroup
        }

    }

}