import React from 'react'
import ReactDOM from 'react-dom'

const myh1 = <div>
    gergreggerg
</div>

const Index = () =>{
    return <div>Hello React!</div>;
}


console.log("__dirname:"+__dirname)

ReactDOM.render(<Index/>, document.getElementById('app'))