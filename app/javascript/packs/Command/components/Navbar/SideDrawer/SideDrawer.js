import React from 'react';
import Logo from '../Logo/Logo';
import NavigationItems from '../NavigationItems/NavigationItems'
import styles from './SideDrawer.module.css'
import Backdrop from '../../UI/BackDrop/BackDrop';

const sideDrawer = (props) => {

    let attachedClasses = [styles.SideDrawer, styles.Close];
 console.log(props.show)
    if (props.show) {
        attachedClasses = [styles.SideDrawer, styles.Open]
    }
    return (

        <div>
            <Backdrop show={props.show} clicked={props.closed} />
            <div className={attachedClasses.join(' ')}>
                <div className={styles.Logo}><Logo/></div>
                <nav>
                    <strong>
                    <NavigationItems clicked={props.closed}/>
                    </strong>
                </nav>
            </div>
        </div>
    );
}

export default sideDrawer