import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Window{
    width: 100
    height: 100
    RowLayout{
        anchors.fill: parent
        Rectangle{
            id: rectangle1
            color: "green"
            radius: width/2
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumHeight: 50
            Layout.maximumHeight: 400
            Layout.minimumWidth: 50
            Layout.maximumWidth: 400
        }
    }
}
