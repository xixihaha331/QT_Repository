import QtQuick 2.8
import QtQuick.Window 2.2

Window{
        width: 200
        height: 200
        Rectangle{

            id: rectangle1
            width: 100
            height: 100
            color: "red"
            radius: width/2
        }
        Rectangle{
            id: rectangle2
            width: 100
            height: 100
            color: "green"
            radius: width/2
            anchors.bottomMargin: 30
            anchors.left: rectangle1.right
            MouseArea{
                anchors.fill: rectangle2
                onClicked: {
                    rectangle2.color = 'yellow'
                }
                onDoubleClicked: {
                    rectangle2.color = 'red'
                }
            }
        }
}
