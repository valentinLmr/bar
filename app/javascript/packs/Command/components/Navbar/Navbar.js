import React from 'react';
import NavigationItems from './NavigationItems/NavigationItems';
import Logo from './Logo/Logo'
import styles from './Navbar.module.css';

const navbar = (props) => (
            <header className={styles.Navbar}>
                <div className={styles.DrawerToggle} onClick={props.clicked}>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <div className={styles.Logo}>
                    <Logo/>
                </div>
                <nav className={styles.DesktopOnly}>
                    <NavigationItems/>
                </nav>
            </header>
        )           

export default navbar;