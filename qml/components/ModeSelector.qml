import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ColumnLayout {

    spacing: 5

    Label {
        text: "Mode"
        color: "white"
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