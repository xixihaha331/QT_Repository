import QtQuick 2.8
import QtQuick.Window 2.2

Window{
    visible: true
    width: 600
    height: 800
    title: qsTr("Grid")
    color: "black"

    Grid{
        x:100
        y:100
        rows: 4
        columns: 3
        rowSpacing: 50
        columnSpacing: 50

        Repeater{
            model: 12

            Rectangle{
                width: 100
                height: 100
                color: "yellow"

                radius: width/2
                Text {
                    text: index
                    font.pointSize: 30
                    anchors.centerIn: parent
                }
            }
        }
    }
}
