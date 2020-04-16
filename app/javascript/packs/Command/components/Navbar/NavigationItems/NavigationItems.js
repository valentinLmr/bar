import React from 'react';
import style from './NavigationItems.module.css'
import { HashLink as Link } from 'react-router-hash-link';


const navigationItems = (props) => (
    <ul className={style.NavigationItems}>
        <Link onClick={props.clicked} to="/#About"><li className={style.NavigationItem}><a href='/'>Profil</a></li></Link>
        <Link onClick={props.clicked} to="/#Projet"><li className={style.NavigationItem}><a href='/'>Projet</a></li></Link>
        <Link onClick={props.clicked} to="/#Formation"><li className={style.NavigationItem}><a href='/'>Formation</a></li></Link>
        <Link onClick={props.clicked} to="/#Contact"><li className={style.NavigationItem}><a href='/'>Contact</a></li></Link>
    </ul>
);

export default navigationItems