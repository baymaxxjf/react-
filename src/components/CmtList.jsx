import React from 'react'
import CmtItem  from '@/CmtItem';
export default class CmtList extends React.Component{
    constructor(){
        super()
        this.state = {
            CommentList:[
                {id:1, user:'张三',content:'哈哈，沙发'},
                {id:2, user:'张三',content:'哈哈，沙发'},
                {id:3, user:'张三',content:'哈哈，沙发'},
                {id:4, user:'张三',content:'哈哈，沙发'}
            ]
        }
    }
    render(){
        return <div>
            <h1>for 循环测试</h1>
            {this.state.CommentList.map(item =>
                <CmtItem {...item} key={item.id}></CmtItem>
            )}
        </div>
    }
}