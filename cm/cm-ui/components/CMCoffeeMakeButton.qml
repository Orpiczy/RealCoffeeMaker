import QtQuick 2.15
import CM 1.0
import assets 1.0

Item {
    signal makeCoffeeClicked()

    implicitHeight: Style.cmCoffeMakeButtonHeight
    implicitWidth: Style.cmCoffeMakeButtonWidth
    Rectangle {
        id:edges
        anchors.fill: parent
        color: Style.colorCmChartEdges
        radius: width*0.05

        states: [
            State {
                name: "hover"
                PropertyChanges {
                    target: mainChartBox
                    color: Style.colorCmChartEdges
                }
            }
        ]

        Rectangle {
            id: mainChartBox
            color: Style.colorCmChartBox
            anchors {
                fill: parent
                margins: 2
            }
            radius: width*0.05
            Text {
                id: textLabel
                anchors {
                    fill: parent
                    centerIn: parent
                }
//                text: stringDecorator.ui_label
                text: "CoffeeMakeButton"
                color: Style.colourDataControlsFont
                font.pixelSize: Style.pixelSizeDataControls
                verticalAlignment: Qt.AlignVCenter
                horizontalAlignment: Qt.AlignHCenter
            }
        }
        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: edges.state = "hover"
            onExited: edges.state = ""
            onClicked: masterController.onMakeCoffeeClicked();
        }
    }
}


