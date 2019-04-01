import React from 'react';
import {NavLink} from 'react-router-dom';
const Header = () => (
<header>
    <nav className="navbar  navbar-dark bg-dark ">
    <a className="navbar-brand" href="#">Task Menager</a>
    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span className="navbar-toggler-icon"></span>
  </button>
      
      
      <div className="collapse navbar-collapse" id="navbarToggler"> 
     
      
      
        <ul className="navbar-nav ml-auto">
        <li className="nav-item">
          
            <a className="nav-link" href=""><NavLink to="/" activeClassName="is-active">View User</NavLink>
</a>
            </li>
            <li className="nav-item">
         
            <a className="nav-link" href=""><NavLink to="/create" activeClassName="is-active">Create user</NavLink>
</a>
            </li>
    </ul>
    </div>
    </nav>
    
</header>


)
export default Header;