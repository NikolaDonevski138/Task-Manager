import React from 'react';
import ReactDOM from 'react-dom';

const info = (props) => {
    <div>
        <h1>info</h1>
        <p>The info is {props.info}</p>
        </div>
}

const withAdminWarning= (WrappedComponent) => {
    return (props) => (
        <div>
            <p>This is private info.Please dont share</p>
            <WrappedComponent {...props}/>
            </div>
    )
}
const AdminInfo= withAdminWarning(info)



const requireAuthentication = (WrappedComponent) => {
    return (props) => {
        <div>
            {props.isAuthenticated ? (
                <WrappedComponent {...props}/>
            ):<p>Please Login to view info</p>}

            </div>
    }
}


const AuthInfo=requireAuthentication(Info);


// RenderDOM.render(<info info="there are the details "/>,document.getElementById('app'));
RenderDOM.render(<AuthInfo isAuthenticated={true} info="there are the details "/>,document.getElementById('app'));

