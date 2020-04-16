import React from 'react';
import valouLogo from '../../../assets/Images/ValouLogo.png';
import styles from './Logo.module.css';
const logo = () => (
    <div className={styles.Logo}>
        <img src={valouLogo} alt='Logo'/>
    </div>
);

export default logo;