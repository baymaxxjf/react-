import React, {Component} from 'react'
import ReactDOM from 'react-dom'

import Hello from './components/Hello'

const myh1 = <div>
    gergreggerg
</div>
let a =1

let Arr = ["aa", "bb", "cc"]
let nameArr = []
Arr.forEach(item =>{
    const temp = <h5>{item}</h5>
    nameArr.push(temp)
})



const dog = {
    name: 'a',
    age: 'b'
}


const Index = () =>{
    return <div>
        kbefkgberb
        <hr/>
        {Arr.map(item=>{
            return <h5 key={item}>{item}</h5>
        })}
        <p className="aa">
            t34t34t
        </p>
        <Hello {...dog}></Hello>
    </div>;
}


console.log("__dirname:"+__dirname)

ReactDOM.render(<Hello {...dog}></Hello>, document.getElementById('app'))