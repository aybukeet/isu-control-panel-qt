import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "components"

ApplicationWindow {
    id: root

    visible: true
    width: 1400
    height: 900

    title: "ISU Control Panel"

    Rectangle {
        anchors.fill: parent
        color: "#1B1D21"

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 20

            Header {
                Layout.fillWidth: true
            }

            TabBar {

                Layout.fillWidth: true

                TabButton {
                    text: "Yazılım Yükleme"
                }

                TabButton {
                    text: "Veri Görüntüleme"
                }
            }

            GridLayout {

                Layout.fillWidth: true
                Layout.fillHeight: true

                columns: 2

                rowSpacing: 20
                columnSpacing: 20

                ISUPanel {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    title: "ISU A-1"
                }

                ISUPanel {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    title: "ISU A-2"
                }

                ISUPanel {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    title: "ISU B-1"
                }

                ISUPanel {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    title: "ISU B-2"
                }
            }

        }

    }

}