import QtQuick 2.8
import QtQuick.Window 2.2

Window{
    visible: true
    width: 500
    height: 400
    color: "black"
    Column{

        Rectangle{
            width: 100
            height: 100
            color: "yellow"
            radius: width/2
        }
        Rectangle{
            id:green_rectangle
            x: 25
            width: 50
            height: 100
            color: "green"
        }
        Rectangle{
            width: 100
            height: 100
            color: "red"
            radius: width/2
        }
        move:Transition {
            NumberAnimation{
                properties:  "x,y"
                duration: 1000
            }

        }
        focus: true
        Keys.onSpacePressed: green_rectangle.visible = ! green_rectangle.visible
    }

}
