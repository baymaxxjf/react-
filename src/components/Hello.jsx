import React from 'react'
// 组件名要大写，并且要引进react
export default function Hello(props){
    console.log(props)
    return <div>hello Component {props.name} </div>
}