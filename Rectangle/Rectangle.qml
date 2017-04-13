import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rectangle example")
    Item{
        Rectangle{
           id: rectangle
            x: 100
            y: 50
            width: 400
            height: 400
            border.color: "red"
            border.width: 3
            color: "green"
            opacity: 0.3
            radius: width/2
            gradient:Gradient{
                GradientStop{
                    position: 0.0
                    color: "green"
                }
                GradientStop{
                    position: 0.4
                    color: "yellow"
                }
                GradientStop{
                    position: 0.8
                    color: "blue"
                }
            }
        }
    }
}


