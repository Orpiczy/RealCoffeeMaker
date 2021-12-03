import QtQuick 2.15
import CM 1.0
import assets 1.0
import components 1.0
import QtQuick.Layouts 1.12

Item {
    implicitHeight: Style.cmChartHeight
    implicitWidth: Style.cmChartWidth
    property alias indicator: indicatorPanel.mapDecorator
    Rectangle {
        id:edges
        anchors.fill: parent
        color: Style.colorCmChartEdges
        radius: Style.cmChartWidth*0.05
        Rectangle {
            id:box
            anchors{
                margins: 5
                fill: parent
            }
            color: Style.colorCmChartBox
            radius: Style.cmChartWidth*0.05
           ColumnLayout{
                anchors{
                    fill: parent
                    centerIn: parent
                }

                CMSwitchPanel {
                    id: switchPanel
                    implicitHeight: parent.height * 0.5
                    Layout.fillWidth: true
                    anchors{
                        margins: 10
                    }
                }

                CMIndicatorPanel {
                    id: indicatorPanel
                    implicitHeight: parent.height - switchPanel.height
                    Layout.fillWidth: true
                    anchors{
                        margins: 10
                    }
                }
            }
        }
    }
}
