import React from 'react';
import ReactDOM from 'react-dom';



class HelloWorld extends React.Component {
    render() {
        return (
            <div> Hey Boys!</div>
        );
    }
}


ReactDOM.render(
    <HelloWorld />,
    document.getElementById('app')
)
