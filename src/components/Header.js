import React from 'react';
import {NavLink} from 'react-router-dom';
const Header = () => (
<header>
<h1>View User</h1>
<NavLink to="/" activeClassName="is-active">View User</NavLink>
<NavLink to="/create" activeClassName="is-active">Create user</NavLink>
<NavLink to="/contact" activeClassName="is-active">Help</NavLink>

</header>


)
export default Header;