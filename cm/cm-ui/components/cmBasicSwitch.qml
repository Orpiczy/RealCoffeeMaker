import QtQuick 2.0
import QtQuick.Controls 2.12
import assets 1.0


Item{
    property alias text: cmd.text
    property int id
//    signal switchHappened(int switchId, bool state)
    Text {
        id: cmd
        text: "do"
        font.family: "Helvetica"
        font.pointSize: Style.cmFontSizeSwitches
        horizontalAlignment: Text.AlignHCenter
        anchors.left:parent.left
        anchors.leftMargin: Style.cmControlMargin
        anchors.verticalCenter: parent.verticalCenter
    }
    Switch {
        id: control
        anchors.right:parent.right
        anchors.verticalCenter: parent.verticalCenter
//        onCheckedChanged: switchHappened(id,control.checked)
        onCheckedChanged: control.checked ? console.log("CMD " + cmd.text + " ON") : console.log("CMD " + cmd.text  + " OFF")
        indicator: Rectangle {
             implicitWidth: 48
             implicitHeight: 20
             x: control.leftPadding
             y: parent.height / 2 - height / 2
             radius: 13
             color: control.checked ? "#17a81a" : "#ffffff"
             border.color: control.checked ? "#17a81a" : "#cccccc"

             Rectangle {
                 x: control.checked ? parent.width - width : 0
                 width: 26
                 height: 26
                 radius: 13
                 color: control.down ? "#cccccc" : "#ffffff"
                 border.color: control.checked ? (control.down ? "#17a81a" : "#21be2b") : "#999999"
                 anchors.verticalCenter: parent.verticalCenter
             }
         }
    }

}


